{% extends "CMakeLists.template.cmake" %}

{% block includes %}
target_include_directories({{name}} PUBLIC SYSTEM .)

{% endblock includes %}
