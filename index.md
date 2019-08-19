---
# Feel free to add content and custom Front Matter to this file.
# To modify the layout, see https://jekyllrb.com/docs/themes/#overriding-theme-defaults

layout: home
# layout: default
---

<h1>Problem sets</h1>

<ul>
{% for problem_set in site.problem_sets %}
  <li>
    <a href="{{ problem_set.url | relative_url }}">
      {{ problem_set.title }}
    </a>
  </li>
{% endfor %}
</ul>

<hr>

<h1>Labs</h1>

<ul>
{% for lab in site.labs %}
 <li>
  <a href="{{ lab.url | relative_url }}">
    {{ lab.title }}
  </a>
 </li>
{% endfor %}
</ul>

<hr>

<h1>Final project</h1>

[The final project]({{ site.baseurl }}{% link project.md %}), where we get to design
cool games.

<hr>

<h1>Examples</h1>

   * [Problem Set 1 example]({{ site.baseurl }}{% link /examples-static/pset1_sample.rkt %})

{% for coll in site.collections %}
{% if coll.label == "examples" %}
<ul>
{% for file in coll.files %}
  <li><h3>
    <a href="{{ file.url | relative_url }}">
      {{ file.name }}
    </a> - {{ file.url | relative_url }}
  </h3></li>
{% endfor %}
</ul>
{% endif %}
{% endfor %}

<hr>
