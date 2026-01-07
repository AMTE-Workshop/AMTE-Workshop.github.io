{% assign year = page.year | default: site.current_year %}
{% assign year_config = site.data.years[year].config %}
{% assign year_data = site.data.years[year] %}

# Background
Supercomputers have begun operating at exascale performance, and a tremendous amount of work has been invested in identifying and overcoming the challenges leading up to this milestone.
These challenges include load balancing, high-throughput data movement, and efficient resource utilization.
Asynchronous Many-Task (AMT) programming models and runtime systems have shown that these challenges can be addressed by providing mechanisms such as oversubscription, locality-aware scheduling, shared-memory execution, and data-dependence–driven execution.

This workshop explores the advantages of AMT programming on current and emerging HPC systems.
It will gather developers, users, and researchers to share experiences, discuss how their approaches meet the challenges posed by today's heterogeneous exascale architectures, and explore opportunities for increased performance, robustness, portability, and full-system utilization.

# Topics
The workshop will focus on the following areas:

* Novel AMT runtime systems
* Experiences using AMT runtime systems
* Comparisons between AMT runtime systems
* Task coordination mechanisms (e.g., dataflow, fork–join)
* Using AMT runtime systems for accelerators or heterogeneous architectures
* Benchmarks for AMT runtime systems
* Profiling, performance analysis, and debugging tools for AMT runtime systems
* Challenges in scaling AMT runtime systems to exascale supercomputer
* Hardware challenges and co-design opportunities for AMT runtime systems
* Task-based algorithms and applications
* AMT approaches for emerging domains beyond HPC (e.g., IoT, distributed systems)
* Application-specific optimizations and case studies using AMT runtime systems

{% assign start_year = 2021 %}
{% assign end_year = year | minus: 1 %}
{% if end_year >= start_year %}
# Previous Events


{% for yr in (2021..end_year) reversed %}
{%- if yr == 2025 %} {%- continue %} {%- endif %}
{%- if yr > 2025 %}
* [AMTE {{ yr }}](https://amte-workshop.github.io/{{ yr }}) @ [PPAM {{ yr }}](https://ppam.edu.pl)
{%- else %}
* [AMTE {{ yr }}](https://amte-workshop.github.io/{{ yr }}) @ [Euro-Par {{ yr }}](https://{{ yr }}.euro-par.org/)
{%- endif %}
{%- endfor -%}
{% endif %}
  


