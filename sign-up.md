---
layout: page
title: Sign Up
permalink: /sign-up/
index: 2
---
## Upcoming Events

{% assign events = site.events | sort: 'index' %}
{% for event in events %}
  {% if event.completed != true %}
    {% assign day = event.date | date: "%-d"  %}
    {% case day %}
      {% when '1' or '21' or '31' %}{% assign ord = "st" %}
      {% when '2' or '22' %}{% assign ord = "nd" %}
      {% when '3' or '23' %}{% assign ord = "rd" %}
      {% else %}{% assign ord = "th" %}
    {% endcase %}
**{{ event.title }}:** [{{ event.date | date: "%B %-d" }}{{ ord }}{{ event.date | date: ", %-I:%M %p (%Z)" }}](https://www.timeanddate.com/worldclock/fixedtime.html?msg=SauerDuels+%23{{ event.index }}%3A+{{ event.title | cgi_escape }}&iso={{ event.date | date: "%Y%m%dT%H%M" }}&p1=83&ah=3) \|\| [Sign Up]({{ event.signupURL }}) \|\| [Bracket]({{ event.bracketURL }})
  {% endif %}
{% endfor %}
