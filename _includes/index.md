{% assign year = page.year | default: site.current_year %}
{% assign year_config = site.data.years[year].config %}
{% assign year_data = site.data.years[year] %}

## Background
Supercomputers are now beginning to break the exascale barrier, and tremendous amounts of work have been invested in identifying and overcoming the challenges leading up to this moment. These challenges include load-balancing, fast data transfers, and efficient resource utilization. Task-based models and runtime systems have shown that it is possible to address these challenges by providing additional mechanisms such as oversubscription, task/data locality, shared memory, and data dependence-driven execution.
This workshop explores the advantages of task-based programming on modern and future HPC systems. It will gather developers, users, and proponents of these models and systems to share experience, discuss how they meet the challenges posed by Exascale system architectures, and explore opportunities for increased performance, robustness, and full-system utilization.

## Topics
The workshop will focus on the following areas:

* Novel task-based runtime environments
* Experiences of using task-based runtime environments for large applications
* Experiences comparing task-based runtime environments
* Experiences gathered from porting one large-scale parallel solution to another, e.g., MPI to Charm++, etc.
* Profiling and performance monitoring of task-based environments
* Benchmarks for task-based runtimes
* Tools for debugging programs using task-based runtimes
* Challenges to task-based runtimes in scaling to large clusters
* Hardware challenges and solutions in using task-based environments

{% assign start_year = 2021 %}
{% assign end_year = year | minus: 1 %}
{% if end_year >= start_year %}
## Previous events


{% for yr in (start_year..end_year) reversed %}
* [AMTE {{ yr }}](https://amte-workshop.github.io/{{ yr }}) @ [Euro-Par {{ yr }}](https://{{ yr }}.euro-par.org/)
{%- endfor -%}
{% endif %}
