{% assign year = page.year | default: site.current_year %}
{% assign year_config = site.data.years[year].config %}
{% assign year_data = site.data.years[year] %}

# Call for Papers

{% if year_data.cfp %}
{{ year_data.cfp.description }}

## Important Dates

{% for date in year_data.cfp.important_dates %}
* {{ date.description }}: {{ date.date }}
{%- endfor -%}

## Submissions

{{ year_data.cfp.submissions }}

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
Call for papers information for {{ year }} is not yet available.
{% endif %}
