---
layout: default
permalink: /call-for-papers/
year: "2025"
---

# Call for Papers ({{ page.year }})

{% if site.data.years[page.year].cfp %}
{{ site.data.years[page.year].cfp.description }}

## Important Dates

{% for date in site.data.years[page.year].cfp.important_dates %}
* {{ date.date }}: {{ date.description }}
{% endfor %}

## Submissions

{{ site.data.years[page.year].cfp.submissions }}

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
Call for papers information for {{ page.year }} is not yet available.
{% endif %}
