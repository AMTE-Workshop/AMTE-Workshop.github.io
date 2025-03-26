---
layout: default
---
# Organizing Committee

{% if site.data.years[site.current_year].committee.organizing %}
{% for member in site.data.years[site.current_year].committee.organizing -%}
* {{ member.name }}, {{ member.affiliation }}, {{ member.country }}
{% endfor %}
{% else %}
Organizing committee members have not been announced yet.
{% endif %}

# Program Committee 


{% if site.data.years[site.current_year].committee.program %}
{% for member in site.data.years[site.current_year].committee.program -%}
* {{ member.name }}, {{ member.affiliation }}, {{ member.country }}
{% endfor %}
{% else %}
Program committee members have not been announced yet.
{% endif %}
