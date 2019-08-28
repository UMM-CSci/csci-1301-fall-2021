
<ul>
{% for lab in site.labs %}
 <li>
  <a href="{{ lab.url | relative_url }}">
    {{ lab.title }}
    {% if lab.status == "draft" %}
      -- DRAFT
    {% endif %}
  </a>
 </li>
{% endfor %}
</ul>
