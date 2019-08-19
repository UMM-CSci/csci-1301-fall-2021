
<ul>
{% for problem_set in site.problem_sets %}
  <li>
    <a href="{{ problem_set.url | relative_url }}">
      {{ problem_set.title }}
    </a>
  </li>
{% endfor %}
</ul>
