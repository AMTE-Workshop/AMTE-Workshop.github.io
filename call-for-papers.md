---
layout: default
permalink: /call-for-papers/
year: "2025"
---
{% if page.year %}
  {% assign year_string = page.year | append: '' %}
{% else %}
  {% assign year_string = "2025" %}
{% endif %}

# Call for Papers ({{ year_string }})

{% if site.data.cfp %}
{{ site.data.cfp.description }}

## Important Dates

{% for date in site.data.cfp.important_dates %}
* {{ date.date }}: {{ date.description }}
{% endfor %}

## Submissions

{{ site.data.cfp.submissions }}

## Contact

For questions or comments regarding the call for papers, please contact **REDACTED**{: #cntc title="workshop contact address"}.

<script type="text/javascript">
var d = "abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ0123456789@_-+.";
var s = "FU4SEFKOYg9osdgvuCAuLFX"
var r = ""
for (var i = 0; i < s.length; i++) r += d.charAt((((d.indexOf(s.charAt(i)) - (3 * i + 31)) + 3 * d.length) % d.length));
document.getElementById("cntc").textContent = r;
</script>

{% else %}
Call for papers information for {{ year_string }} is not yet available.
{% endif %}
