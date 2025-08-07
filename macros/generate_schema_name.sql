{% macro generate_schema_name(custom_schema_name, node) -%}
    {% if custom_schema_name is not none %}
        {{ return(custom_schema_name | upper) }}
    {% endif %}

    {% set fqn = node.fqn | map('lower') %}
    
    {% if 'bronze_layer' in fqn %}
        {% set schema = "BRONZE" %}
    {% elif 'silver_layer' in fqn %}
        {% set schema = "SILVER" %}
    {% elif 'gold_layer' in fqn %}
        {% set schema = "GOLD" %}
    {% else %}
        {% set schema = target.schema %}
    {% endif %}

    {{ return(schema) }}
{%- endmacro %}
