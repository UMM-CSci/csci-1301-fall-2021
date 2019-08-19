---
# Feel free to add content and custom Front Matter to this file.
# To modify the layout, see https://jekyllrb.com/docs/themes/#overriding-theme-defaults

layout: home
# layout: default
---

<h1>Problem sets</h1>

{% for problem_set in site.problem_sets %}
  <h2>
    <a href="{{ problem_set.url }}">
      {{ problem_set.title }}
    </a>
  </h2>
{% endfor %}

<hr>

<h1>Labs</h1>

{% for lab in site.labs %}
 <h2>
  <a href="{{ lab.url }}">
    {{ lab.title }}
  </a>
 </h2>
{% endfor %}

<hr>

<h1>Examples</h1>

{% for coll in site.collections %}
{% if coll.label == "examples" %}
<ul>
{% for file in coll.files %}
  <li><h3>
    <a href="{{ file.url }}">
      {{ file.name }}
    </a> - {{ file.url }}
  </h3></li>
{% endfor %}
</ul>
{% endif %}
{% endfor %}

<hr>
