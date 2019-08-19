---
# Feel free to add content and custom Front Matter to this file.
# To modify the layout, see https://jekyllrb.com/docs/themes/#overriding-theme-defaults

layout: home
# layout: default
---

# Problem sets

{%- include problem_sets.md %}

<hr>

# Labs

{%- include labs.md %}

<hr>

# Final project

[The final project]({{ site.baseurl }}{% link project.md %}), where we get
to design cool games.

<hr>

<h1>Examples</h1>

{% for example in site.examples %}
[{{ example.title }}]({{ example.racket_path | relative_url }})
: {{ example.content }}
{% endfor %}
