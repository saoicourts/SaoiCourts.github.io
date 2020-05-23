---
layout: default
title: "Nico Courts :: Blog"
---
<center>
Thank you for visiting my website!
Below you will find my blog: my random collection of thoughts on math, life, nature, politics, animals, media, and whatever else my catches my fancy at the moment.
</center>

---

<ul id="postlist">
  {% for post in site.posts %}
    <li>
      <h3><a href="{{ post.url }}">{{ post.title }}</a><span class="postdate" style="color:#999; font-size:12pt;font-weight:normal;margin: 0 20px;"><em>{{ post.date | date_to_string }}</em></span></h3>
      
      <div class="smolp">{{ post.excerpt }}</div>
    </li>
  {% endfor %}
</ul>