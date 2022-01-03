# Copyright 2021, Ryan Pavlik <ryan.pavlik@gmail.com>
#
# SPDX-License-Identifier: BSD-3-Clause

{% block whole_build %}
### Generated file! Edit the templates in templates,
### specifically templates/{{template}},
{% if assumed_custom_template_name -%}
### or create a derived template in templates/{{assumed_custom_template_name}},
{% endif -%}
### then re-run ./make-cmake.py
{% block children %}
{% for child in children %}
add_subdirectory({{child}})
{% endfor %}
{% endblock children %}

{% block add_target %}
add_library({{name}} STATIC
{% if headers %}
{% block headers %}
    {{ headers | join('\n') | indent(4) }}
{% endblock headers %}
{% endif %}
{% block sources %}
    {{ sources | join('\n') | indent(4) }}
{% endblock sources %}
)
{% endblock add_target %}

{% if arm %}
target_compile_options({{name}} PRIVATE -marm)
{% else %}
target_compile_options({{name}} PRIVATE -mthumb)
{% endif %}
{% endblock %}
{% block linking %}
# target_link_libraries({{name}} PRIVATE)
{% endblock %}
{% block features %}
target_compile_features({{name}} PUBLIC c_std_99)
{% endblock %}

{% block includes %}
{% if public_includes or private_includes or custom_includes %}
target_include_directories({{name}}
{% block pub_includes %}
{% if public_includes %}
    PUBLIC SYSTEM
    {{ public_includes | join('\n') | indent(4) }}
{% endif %}
{% endblock pub_includes %}
{% block priv_includes %}
{% if private_includes %}
    PRIVATE SYSTEM
    {{ private_includes | join('\n') | indent(4) }}
{% endif %}
{% endblock priv_includes %}
)
{% endif %}

{% endblock %}
