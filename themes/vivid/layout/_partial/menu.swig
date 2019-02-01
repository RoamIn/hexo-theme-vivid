<div id="J_Menu" class="menu">
    <button id="J_MenuSwitch" class="switch">
        <svg class="icon" aria-hidden="true">
            <use xlink:href="#icon-menu"></use>
        </svg>
    </button>

    <div class="drawer">
        <div class="brand clearfix">
            <a href="{{ url_for(theme.avatar_link) }}" class="avatar">
                <img src="{{ url_for(theme.avatar) }}">
            </a>
            <h5 class="nickname">Vinci</h5>
            <a href="mailto:ivill@live.com" title="ivill@live.com" class="mail">ivill@live.com</a>
        </div>
        <nav class="menu-nav">
            {% for menu in theme.menu %}
                <a href="{{ menu.url }}" title="{{ menu.text }}" class="nav-item {{ is_current(menu.url) ? 'active' : '' }}">
                    {#<i class="iconfont {{ menu.icon }}"></i>#}
                    <svg class="icon" aria-hidden="true">
                        <use xlink:href="#{{ menu.icon }}"></use>
                    </svg>
                    {{ menu.text }}
                </a>
            {% endfor %}
        </nav>
    </div>
    <div id="J_Backdrop" class="backdrop"></div>
</div>
