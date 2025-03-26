---
layout: default
permalink: /call-for-papers/
---

# Call for Papers ({{ site.current_year }})

{% if site.data.years[site.current_year].cfp %}
{{ site.data.years[site.current_year].cfp.description }}

## Important Dates

{% for date in site.data.years[site.current_year].cfp.important_dates %}
* {{ date.date }}: {{ date.description }}
{% endfor %}

## Submissions

{{ site.data.years[site.current_year].cfp.submissions }}

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
Call for papers information for {{ site.current_year }} is not yet available.
{% endif %}
