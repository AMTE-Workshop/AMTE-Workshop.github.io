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

<br/>

## Submissions

{{ year_data.cfp.submissions }}

## Contact

For questions or comments regarding the call for papers, please contact **REDACTED**{: #cntc title="workshop contact address"}.

<script type="text/javascript">
document.getElementById("cntc").textContent=function(t){for(var n=t.length,o=Math.floor((n+1)/2),r=n-o,c=[],e=[],h=0,a=0;a<o;a++)a<r&&c.push(t.charAt(h++)),e.push(t.charAt(h++));var u=e.concat(c),d=[];for(a=0;a<u.length;a++){var f=(u[a].charCodeAt(0)-33-(73*a+191))%94;f<0&&(f+=94),d.push(String.fromCharCode(f+33))}return d.join("")}("NdE[,Mz)`Mnh;D{@u,c")
</script>

{% else %}
Call for papers information for {{ year }} is not yet available.
{% endif %}
