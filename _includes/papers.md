{% assign year = page.year | default: site.current_year %}
{% assign year_config = site.data.years[year].config %}
{% assign year_data = site.data.years[year] %}

{% if year_data.papers %}
# Accepted papers

{% for paper in year_data.papers -%}
## {{ paper.title }}

{% comment %}
{% if paper.url %}
URL: {{ paper.url }}
{% endif %}

{% if paper.doi %}
DOI: {{ paper.doi }}
{% endif %}

{% if paper.pdf %}
PDF:

[![PDF](/assets/pdf.png)]({{ paper.pdf }})
{% endif %}

{% if paper.slides %}
Slides:

[![Slides](/assets/slides.png)]({{ paper.slides }})
{% endif %}
{% endcomment %}

**_Authors_**: {{ paper.authors | join: ", " }}

**_Abstract_**: {{ paper.abstract }}

{% if paper.slides %}
[![Slides](/assets/slides.png)]({{ paper.slides }})
{% endif %}

{% endfor %}
{% else %}
No papers have been accepted yet. See the [call for papers](/call-for-papers) for more information.
{% endif %}
