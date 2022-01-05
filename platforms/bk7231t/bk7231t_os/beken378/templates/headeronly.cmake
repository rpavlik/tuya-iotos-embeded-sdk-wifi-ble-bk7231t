{% extends "CMakeLists.template.cmake" %}

{% block linking %}{% endblock %}
{% block features %}{% endblock %}
{% block compile_options %}{% endblock %}

{% block add_target %}
add_library({{name}} INTERFACE
{% block headers %}
    {{ headers | join('\n') | indent(4) }}
{% endblock headers %}
)
{% endblock add_target %}


{% block includes %}
target_include_directories({{name}}
    INTERFACE SYSTEM
{% block interface_includes %}
    .
{% endblock interface_includes %}
)
{% endblock %}
