{% assign year = page.year | default: site.current_year %}
{% assign year_config = site.data.years[year].config %}
{% assign year_data = site.data.years[year] %}

# Organizing Committee

{% if year_data.committee.organizing %}
{% for member in year_data.committee.organizing -%}
* {{ member.name }}, {{ member.affiliation }}, {{ member.country }}
{% endfor %}
{% else %}
Organizing committee members have not been announced yet.
{% endif %}

# Program Committee 


{% if year_data.committee.program %}
{% for member in year_data.committee.program -%}
* {{ member.name }}, {{ member.affiliation }}, {{ member.country }}
{% endfor %}
{% else %}
Program committee members have not been announced yet.
{% endif %}
