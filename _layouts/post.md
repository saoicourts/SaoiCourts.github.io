---
layout: default
head: '<script src="https://code.jquery.com/jquery-3.5.1.min.js" integrity="sha256-9/aliU8dGd2tb6OSsuzixeV4y/faTqgFtohetphbbj0=" crossorigin="anonymous"></script><script src="/assets/js/comments.js"></script><script src="https://www.google.com/recaptcha/api.js" async defer></script><script src="/assets/js/autogrow.js"></script>'
---
<div class="post" markdown="1">
## {{page.title}} *{{ page.date | date_to_string | replace: " ", "&nbsp;"}}*{: style="color:#999; font-size:12pt; font-weight:normal; margin: 0 20px;"}

---
{% katexmm %}
{{ page.content }}
{% endkatexmm %}

<br>
{% capture length %}{{ page.tags | size }}{% endcapture %}
{% if length != '0' %}
<div id="tags">
Tagged:
    {% for tag in page.tags %}
    <span class='tag'><a class="post" href="/tag/{{tag}}">{{tag}}</a></span>
    {% endfor %}
</div>
</div>

{% endif %}
[Back to blog](/blog)

---
{% if page.comments %}
  {% include comments.html %}
{% endif %}

