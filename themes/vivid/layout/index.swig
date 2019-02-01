{% extends '_layout.swig' %}

{% block body %}
    <ul class="post-list">
        {% for post in page.posts.data %}
            <li class="post-list-item">
                <a class="post-list-item-cover" href="{{ post.path }}" style="background-image: url({{ post.cover }})">
                    {#<img class="post-cover-image" src="{{ post.cover }}" alt="post cover">#}
                    <time class="post-date" datetime="{{ post.date }}">
                        <span class="post-date-day">{{ date(post.date, 'D') }}</span>
                        <span class="post-date-month-and-year">{{ date(post.date, 'MMM. YYYY') }}</span>
                    </time>
                    <div class="post-info">
                        <p class="post-summary">
                            {% set content = post.content | striptags %}
                            {{ content.substring(0, 100) }}
                        </p>
                        <h3 class="post-title">《{{ post.title }}》</h3>
                    </div>
                </a>
            </li>
        {% endfor %}
    </ul>

    {% include '_partial/pagination.swig' %}
{% endblock %}
