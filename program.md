---
layout: default
---
# Program Schedule

<!-- Replace with the actual date of the event -->
Date: [Insert Date Here]

<!-- Replace with the name of the session chair -->
Chair: Patrick Diehl

<!-- Add session details below. Format: Time range, Session title or description -->
* [Insert Time] - [Insert Time], [Session Title or Description]
* [Insert Time] - [Insert Time], [Session Title or Description]
* [Insert Time] - [Insert Time], [Session Title or Description]

<!-- Add breaks as needed -->
* [Insert Time] - [Insert Time], [Break Type (e.g., Coffee Break)]

<!-- Add a new chair if the session changes -->
Chair: [Insert Chair Name Here]

* [Insert Time] - [Insert Time], [Session Title or Description]
* [Insert Time] - [Insert Time], [Session Title or Description]
* [Insert Time] - [Insert Time], [Session Title or Description]
* [Insert Time] - [Insert Time], [Session Title or Description]
* [Insert Time] - [Insert Time], [Discussion or Other Activity]

* [Insert Time] - [Insert Time], [Break Type (e.g., Lunch Break)]

<!-- Specify the time zone for clarity -->
{% assign city = site.conf_city | split: ', ' | first | downcase %}
{% assign country = site.conf_city | split: ', ' | last | downcase %}
All times are in Central European Time ([UTC+1](https://www.timeanddate.com/worldclock/{{ city }}/{{ country }})).

<!-- Add a link to the complete program if available -->
#The complete EuroPar program is available at [https://2025.euro-par.org/program/](https://2025.euro-par.org/program/).

