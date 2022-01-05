#!/usr/bin/env python3
# Copyright 2019-2021, Collabora, Ltd.
#
# SPDX-License-Identifier: BSL-1.0

# Be sure to install cmake-format first to get best results:
# pip3 install cmake-format


from pathlib import Path
from typing import Dict, List, Optional, Union

from jinja2 import Environment, FileSystemLoader
from jinja2.utils import Markup

try:
    from cmake_format.__main__ import process_file as cf_process_file
    from cmake_format.configuration import Configuration as CF_Configuration

    HAVE_CMAKE_FORMAT = True
except:
    print(
        "cmake-format not found... generated files might look gross. Do pip3 install cmakelang"
    )
    HAVE_CMAKE_FORMAT = False

BEKEN378_DIR = Path(__file__).resolve().parent
PARENT_DIR = BEKEN378_DIR.parent


class Module:
    def __init__(
        self,
        path: Path,
        recurse: bool = True,
        extra_pub_includes: Optional[List[str]] = None,
        exclude: Optional[List[Path]] = None,
    ):
        self.path = path
        self.recurse = recurse
        self.source_globs = [
            "*.c",
            "*.s",
            "*.S",
        ]
        self.extra_pub_includes = extra_pub_includes
        if not exclude:
            exclude = []
        self.exclude = set(exclude)

    def has_file(self, fn: str) -> bool:
        return (self.path / fn).exists()

    def get_child_directories(self, all_modules: List["Module"]) -> List[str]:
        return [
            str(mod.path.name) for mod in all_modules if mod.path.parent == self.path
        ]

    @property
    def relative_path(self) -> Path:
        return self.path.relative_to(PARENT_DIR)

    @property
    def name(self):
        return "_".join(self.relative_path.parts)

    @property
    def arm(self) -> bool:
        return "os" in self.relative_path.parts

    def get_template_data(
        self, all_modules: List["Module"]
    ) -> Dict[str, Union[str, List[str], bool]]:
        if self.recurse:
            glob = self.path.rglob
        else:
            glob = self.path.glob
        data: Dict[str, Union[str, List[str], bool]] = {
            "name": self.name,
        }
        d = self.path
        sources: List[str] = []
        for g in self.source_globs:
            sources.extend(
                str(x.relative_to(d)).replace("\\", "/")
                for x in glob(g)
                if x not in self.exclude
            )
        sources.sort()

        if sources:
            data["sources"] = sources

        headers = list(
            sorted(
                str(x.relative_to(d)).replace("\\", "/")
                for x in glob("*.h")
                if x not in self.exclude
            )
        )
        if headers:
            data["headers"] = headers

        public_includes = []

        if self.extra_pub_includes:
            public_includes.extend(self.extra_pub_includes)

        if any(s.endswith("_pub.h") for s in headers):
            public_includes.append(".")

        if (self.path / "include").is_dir():
            public_includes.append("include")

        if (self.path / "inc").is_dir():
            public_includes.append("inc")

        if public_includes:
            data["public_includes"] = public_includes

        public_libs = []
        if (self.path.parent / "include").is_dir():
            public_libs.append(self.name.replace(self.path.name, "include"))

        if public_libs:
            data["public_libs"] = public_libs

        if self.arm:
            data["arm"] = True

        children = self.get_child_directories(all_modules)
        if children:
            data["children"] = children
        return data


class CMaker:
    def __init__(self, format_config=None):
        self.root = Path(__file__).parent.resolve()
        self.template_dir = self.root / "templates"
        self.env = Environment(
            keep_trailing_newline=True,
            autoescape=False,
            loader=FileSystemLoader([str(self.template_dir)]),
        )
        self.default_template_name = "CMakeLists.template.cmake"
        self.template = self.env.get_template(self.default_template_name)
        self.format_config = format_config
        self.modules = []

    def handle_dir(self, d, recurse_sources=False):
        # print(d)
        mod = Module(d, recurse_sources)
        if any(m.name == mod.name for m in self.modules):
            # already added
            return
        self.modules.append(mod)

    def render_module(self, mod: Module):
        data = mod.get_template_data(self.modules)
        custom_template_name = mod.name + ".cmake"
        if (self.template_dir / custom_template_name).exists():
            print(mod.name, "has a custom template")
            template = self.env.get_template(custom_template_name)
            data["template"] = "{} (custom for this directory)".format(
                custom_template_name
            )
        else:
            template = self.template
            data["template"] = "{} (shared with all other directories)".format(
                self.default_template_name
            )
            data["assumed_custom_template_name"] = custom_template_name
        output = template.render(data)
        if self.format_config:
            output = cf_process_file(self.format_config, output)
            # Handle both original 0.6.0 and newer - tested with 0.6.10dev3
            if isinstance(output, tuple):
                output = output[0]
        with open(mod.path / "CMakeLists.txt", "w", encoding="utf-8") as fp:
            fp.write(output)

    def run(self):
        self.modules = [
            Module(self.root / "common"),
            Module(self.root / "ip"),
            Module(self.root / "os", recurse=False),
            Module(
                self.root / "os" / "FreeRTOSv9.0.0",
                extra_pub_includes=["FreeRTOS/Source/Include"],
                exclude=[
                    self.root
                    / "os"
                    / "FreeRTOSv9.0.0"
                    / "FreeRTOS"
                    / "Source"
                    / "Portable"
                    / "Keil"
                    / "ARM968es"
                    / "portasm.s"
                ],
            ),
        ]

        dirs_with_subdirs = (
            self.root / "func",
            self.root / "driver",
            self.root / "app",
        )
        for dirname in dirs_with_subdirs:
            self.handle_dir(dirname, recurse_sources=False)

            for d in dirname.iterdir():
                if not d.is_dir():
                    continue
                if d.name == "include":
                    continue
                self.handle_dir(d, recurse_sources=True)

            self.handle_dir(d)
        for mod in self.modules:
            self.render_module(mod)


if __name__ == "__main__":
    config = None
    if HAVE_CMAKE_FORMAT:
        # config = get_default_cmake_format_config(enable_markup=False)
        config = CF_Configuration(enable_markup=False, tab_size=4)

    app = CMaker(config)
    app.run()
