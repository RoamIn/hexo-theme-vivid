<!doctype html>
<html lang="{{ config.language }}">
{% include '_partial/head.swig' %}

<body>
{% include '_partial/header.swig' %}
<main>
    {% block body %}{% endblock %}
</main>

{% include '_partial/back-to-top.swig' %}
{% include '_partial/footer.swig' %}

{% include '_partial/scripts.swig' %}
</body>
</html>
