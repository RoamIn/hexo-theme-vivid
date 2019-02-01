{% extends '_layout.swig' %}

{% block body %}
    <div class="categories-page">
        <div class="category-all-title">
            目前共计 {{ site.categories.length }} 个分类
        </div>
        <div class="category-list">
            {{ list_categories() }}
        </div>
    </div>
{% endblock %}
