{% if page.total > 0 %}
    <nav class="pagination">
        {% if page.prev === 0 %}
            <span class="extend prev disabled">&lt;</span>
        {% endif %}

        {{ paginator({
            prev_text: '<',
            next_text: '>',
            mid_size: 1
        }) }}

        {% if page.next === 0 %}
            <span class="extend next disabled">&gt;</span>
        {% endif %}
    </nav>
{% endif %}