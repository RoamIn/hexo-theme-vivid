{% extends '_layout.swig' %}

{% block body %}
    <div id="category">
        {{ list_categories() }}
    </div>

    {{ paginator() }}
{% endblock %}
