---
layout: default
title: {{ title }}
---
## {{page.title}} *{{ page.date | date_to_string }}*{: style="color:#999; font-size:12pt; font-weight:normal; margin: 0 20px;"}

---
{% katexmm %}
{{ page.content }}
{% endkatexmm %}

[Back to blog](/blog)