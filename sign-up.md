---
layout: page
title: Sign Up
permalink: /sign-up/
index: 2
---

## Details

You can sign up by creating a Challonge account and using the sign-up links below, or by sending us a message on Discord. You must be on our Discord server to be able to play. Events will last about 2 hours per mode.

<a href="https://discord.gg/FTSjNfz" target="_blank">https://discord.gg/FTSjNfz</a>

## Events

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
**{{ event.title }}:** <a href="https://www.timeanddate.com/worldclock/fixedtime.html?msg=SauerDuels+%23{{ event.index }}%3A+{{ event.title | cgi_escape }}&iso={{ event.date | date: "%Y%m%dT%H%M" }}&p1=37&ah=3)" target="_blank">{{ event.date | date: "%B %-d" }}{{ ord }}{{ event.date | date: ", %-I:%M %p (%Z)" }}</a> \| <a href="{{ event.signupurl }}" target="_blank">Sign Up</a> \| <a href="{{ event.bracketurl }}" target="_blank">Bracket</a>
  {% endif %}
{% endfor %}
