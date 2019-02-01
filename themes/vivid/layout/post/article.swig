<article>
    <header>
        <div>{{ page.category }}</div>
        <h1 class="post-title">{{ page.title }}</h1>
        <div class="post-stuff">
                <span class="post-date">
                    <span class="post-meta-item-text">发表于</span>&nbsp
                    <time datetime="{{ page.date }}">{{ date(page.date) }}</time>
                </span>
            <span class="post-word-count">
                    <span class="post-meta-item-text">分类于</span>
                    <span>
                        {% for cat in post.categories %}
                            {{ url(cat.path, cat.name) }}
                        {% endfor %}
                    </span>
                </span>
            <span id="busuanzi_container_page_pv" class="post-visitors-count post-visitors-count">
                    <span class="post-meta-item-text">阅读次数</span>
                    &nbsp;<span id="busuanzi_value_page_pv">0</span>
                </span>
        </div>
    </header>
    <div id="post-content" class="markdown post-body">
        {{ page.content }}
    </div>
</article>
