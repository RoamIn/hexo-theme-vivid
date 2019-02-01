{% if theme.scripts !== undefined and theme.scripts.length > 0 %}
    {# scripts list from config.yml #}
    {{ js(theme.scripts) }}
{% endif %}
{% if is_home() %}

{% endif %}
