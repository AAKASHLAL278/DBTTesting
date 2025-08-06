{% macro generate_schema_name(custom_schema_name, node) -%}
    {# If schema not given in config, decide based on folder #}
    {% if custom_schema_name is none %}
        {% set path = node.path | lower %}

        {% if "bronze_layer" in path %}
            {% set schema = "BRONZE" %}
        {% elif "silver_layer" in path %}
            {% set schema = "SILVER" %}
        {% elif "gold_layer" in path %}
            {% set schema = "GOLD" %}
        {% else %}
            {% set schema = target.schema %}
        {% endif %}

        {{ schema }}
    {% else %}
        {{ custom_schema_name | upper }}
    {% endif %}
{%- endmacro %}
