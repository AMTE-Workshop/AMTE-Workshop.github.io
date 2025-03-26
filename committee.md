---
layout: default
year: "2025"
---
# Organizing Committee

{% if site.data.years[page.year].committee.organizing %}
{% for member in site.data.years[page.year].committee.organizing -%}
* {{ member.name }}, {{ member.affiliation }}, {{ member.country }}
{% endfor %}
{% else %}
Organizing committee members have not been announced yet.
{% endif %}

# Program Committee 


{% if site.data.years[page.year].committee.program %}
{% for member in site.data.years[page.year].committee.program -%}
* {{ member.name }}, {{ member.affiliation }}, {{ member.country }}
{% endfor %}
{% else %}
Program committee members have not been announced yet.
{% endif %}
