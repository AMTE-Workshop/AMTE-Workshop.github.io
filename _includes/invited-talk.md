{% assign year = page.year | default: site.current_year %}
{% assign year_config = site.data.years[year].config %}
{% assign year_data = site.data.years[year] %}

{% assign talk = year_data.invited_talk %}
{% assign speaker = talk.speaker %}

{% if talk %}
# Invited talk

## Speaker

{% if speaker.photo %}
![{{ speaker.name }}]({{ speaker.photo }})
{% endif %}

### {{ speaker.courtesy_title }} {{ speaker.name }}, {{ speaker.affiliation }}, {{ speaker.country }}

{{ speaker.bio }}

{% if talk.title and talk.abstract  %}
### {{ talk.title }}

{{ talk.abstract }}

{% if talk.materials %}
### Materials

{% for material in talk.materials %}
* [{{ material.title }}]({{ material.url }})
{% endfor %}
{% endif %}

{% endif %}

{% else %}
The invited talk has not been announced yet.
{% endif %}
