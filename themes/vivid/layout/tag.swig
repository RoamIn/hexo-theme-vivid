{#{{ partial('tags') }}#}
{% extends '_layout.swig' %}

{% block body %}
    <div>
          tag
    </div>

    {{ paginator() }}
{% endblock %}
