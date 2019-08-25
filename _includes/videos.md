
All these are in [a YouTube playlist](https://www.youtube.com/playlist?list=PLSAR9qWL-3y6b9FFRS6DtTZLGmozeUDRS) as well.

<ul>
{% for video in site.videos %}
 <li>
  <a href="{{ video.youtube_link }}">
    {{ video.title }}
  </a>
 </li>
{% endfor %}
</ul>
