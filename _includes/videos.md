
<ul>
{% for video in site.videos %}
 <li>
  <a href="{{ video.url }}">
    {{ video.title }}
  </a>
 </li>
{% endfor %}
</ul>
