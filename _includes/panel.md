{% assign year = page.year | default: site.current_year %}
{% assign year_config = site.data.years[year].config %}
{% assign year_data = site.data.years[year] %}

# Panel

## Moderator

{% assign mod = year_data.panel.moderator %}
{% if mod %}
* {{ mod.name }}, {{ mod.affiliation }}, {{ mod.country }}
{% else %}
The moderator has not been announced yet.
{% endif %}

## Panelists

{% if year_data.panel.panelists %}
{% for panelist in year_data.panel.panelists -%}
* {{ panelist.name }}, {{ panelist.affiliation }}, {{ panelist.country }}
{% endfor %}
{% else %}
Panelists have not been announced yet.
{% endif %}

## Panel's chosen questions

{% if year_data.panel.questions %}
{% for question in year_data.panel.questions %}
* {{ question.q }}
    {%- if question.followups -%}
    {% for followup in question.followups %}
    * {{ followup }}
    {%- endfor -%}
    {%- endif -%}
{% endfor %}
{% else %}
No questions have been chosen yet.
{% endif %}

## Outline

{% if year_data.panel.outline %}
{% for item in year_data.panel.outline %}
* {{ item }}
{%- endfor -%}
{% else %}
Panel outline has not been announced yet.
{% endif %}
