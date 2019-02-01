{% extends '_layout.swig' %}

{% block body %}
    <section class="archive-page">
        {#<h2 class="archive-page-title">#}
        {#文章归档#}
        {#非常好! 目前共计 {{ site.posts.length }} 篇日志。 继续努力。#}
        {#</h2>#}

        {% set currentDate = 0 %}
        {% for post in page.posts %}
            {% set postDate = date(post.date, 'YYYY年MM月') %}

            {% if currentDate !==  postDate %}
                {% if currentDate !== 0  %}
                    </ul>
                {% endif %}

                {% set currentDate = postDate %}

                <h2 class="archive-stats">
                    <time class="archive-year">{{ postDate }}</time>
                </h2>
                <ul class="archive-list">
            {% endif %}
            <li class="archive-list-item">
                {#<time class="archive-date">{{ date(post.date, 'MM-DD') }}</time>#}
                <a class="post" href="{{ url_for(post.path) }}">
                    <div class="post-cover" style="background-image: url({{ post.cover }})"></div>
                    <div class="post-info">
                        <div class="post-title">{{ post.title }}</div>
                    </div>
                </a>
            </li>
        {% endfor %}
    </section>
{% endblock %}
