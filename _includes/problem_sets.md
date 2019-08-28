
<ul>
{% for problem_set in site.problem_sets %}
  <li>
    <a href="{{ problem_set.url | relative_url }}">
      {{ problem_set.title }}
      {% if problem_set.status == "draft" %}
        -- DRAFT
      {% endif %}
    </a>
  </li>
{% endfor %}
</ul>
