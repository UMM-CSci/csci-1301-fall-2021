
<ul>
{% for lab in site.labs %}
 <li>
  <a href="{{ lab.url | relative_url }}">
    {{ lab.title }}
  </a>
 </li>
{% endfor %}
</ul>
