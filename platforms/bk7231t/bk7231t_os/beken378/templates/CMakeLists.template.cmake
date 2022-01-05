# Copyright 2021, Ryan Pavlik <ryan.pavlik@gmail.com>
#
# SPDX-License-Identifier: BSD-3-Clause

{% block whole_build %}
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

{% block compile_options %}
{% if arm %}
target_compile_options({{name}} PRIVATE -marm)
{% else %}
target_compile_options({{name}} PRIVATE -mthumb)
{% endif %}
{% endblock compile_options %}

{% block linking %}
target_link_libraries({{name}}
    PUBLIC
    beken378_common{% if public_libs %}
    {{ public_libs | join('\n') | indent(4) }}
{% endif %})
{% endblock %}
{% block features %}
set_target_properties({{name}} PROPERTIES C_STANDARD 99)
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

{% endblock includes %}

{% endblock whole_build %}
