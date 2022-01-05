{% extends "headeronly.cmake" %}

{% block linking %}
target_link_libraries({{name}} INTERFACE beken378_app_config)
{% endblock %}

{% block interface_includes %}
    .
    ../driver/common
    ../driver/entry
    ../ip/common
    ../os/FreeRTOSv9.0.0/FreeRTOS/Source/portable/Keil/ARM968es
{% endblock interface_includes %}
