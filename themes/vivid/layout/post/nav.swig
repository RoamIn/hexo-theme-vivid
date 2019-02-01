<div class="post-nav">
    <a class="post-nav-item post-nav-prev" href="{{ url_for(page.prev.path) }}">
        <div class="post-cover" style="background-image: url({{  page.prev.cover }})"></div>
        <div class="post-info">
            <div class="post-info-label">PREVIOUS POST</div>
            <div class="post-title">{{ page.prev.title }}</div>
        </div>
    </a>
    <a class="post-nav-item post-nav-next" href="{{ url_for(page.next.path) }}">
        <div class="post-cover" style="background-image: url({{  page.next.cover }})"></div>
        <div class="post-info">
            <div class="post-info-label">NEXT POST</div>
            <div class="post-title">{{ page.next.title }}</div>
        </div>
    </a>
</div>
