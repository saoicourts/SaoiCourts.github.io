---
layout: default
title: "Nico Courts :: Blog"
pagination: 
  enabled: true
---
<center>
Thank you for visiting my website!
Below you will find my blog: my random collection of thoughts on math, life, nature, politics, animals, media, and whatever else my catches my fancy at the moment.
</center>

---

<ul id="postlist">
  {% for post in paginator.posts %}
    <li>
      <h3><a href="{{ post.url }}">{{ post.title }}</a><span class="postdate" style="color:#999; font-size:12pt;font-weight:normal;margin: 0 20px;"><em>{{ post.date | date_to_string }}</em></span></h3>
      
      <div class="smolp"><em>{{ post.description }}</em></div>
    </li>
  {% endfor %}
</ul>

{% if paginator.total_pages > 1 %}
<center>
<ul id="pagination">
  {% if paginator.previous_page %}
  <li>
    <a href="{{ paginator.previous_page_path | prepend: site.baseurl }}">🡠</a>
  </li>
  {% else %}
  <li>
    <span style="color:white">🡠</span>
  </li>
  {% endif %}
  Page {{page.pagination_info.curr_page}} of {{page.pagination_info.total_pages}}
  {% if paginator.next_page %}
  <li>
    <a href="{{ paginator.next_page_path | prepend: site.baseurl }}">🡢</a>
  </li>
  {% else %}
  <li>
    <span style="color:white">🡢</span>
  </li>
  {% endif %}

</ul>
</center>
{% endif %}
<hr>
