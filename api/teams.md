---
layout: default
title: Teams
permalink: /json-api-teams.html
---

# {{ page.title }}

## GET teams for an event (league+season)

- `/event/:key/teams`

Examples:

- `/event/world.2014/teams`  -- World Cup Teams (Brazil 2014)
- `/event/de.2013_14/teams`  -- Deutsche Bundesliga Teams (Season 2013/14)

Results:

```json
{
  "event": {
    "key":"world.2014",
    "title":"World Cup 2014"
  },
  "teams": [
    {"key":"gre","title":"Greece","code":"GRE"},
    {"key":"rus","title":"Russia","code":"RUS"},
    {"key":"ned","title":"Netherlands","code":"NED"},
    {"key":"ger","title":"Germany","code":"GER"},
    {"key":"por","title":"Portugal","code":"POR"},
    {"key":"esp","title":"Spain","code":"ESP"},
    {"key":"ita","title":"Italy","code":"ITA"},
    {"key":"cro","title":"Croatia","code":"CRO"},
    {"key":"fra","title":"France","code":"FRA"},
    {"key":"eng","title":"England","code":"ENG"},
    {"key":"sui","title":"Switzerland","code":"SUI"},
    {"key":"bel","title":"Belgium","code":"BEL"},
    {"key":"bih","title":"Bosnia-Herzegovina","code":"BIH"},
    {"key":"alg","title":"Algeria","code":"ALG"},
    {"key":"civ","title":"C\u00f4te d'Ivoire","code":"CIV"},
    {"key":"gha","title":"Ghana","code":"GHA"},
    {"key":"cmr","title":"Cameroon","code":"CMR"},
    {"key":"nga","title":"Nigeria","code":"NGA"},
    {"key":"mex","title":"Mexico","code":"MEX"},
    {"key":"usa","title":"United States","code":"USA"},
    {"key":"hon","title":"Honduras","code":"HON"},
    {"key":"crc","title":"Costa Rica","code":"CRC"},
    {"key":"arg","title":"Argentina","code":"ARG"},
    {"key":"bra","title":"Brazil","code":"BRA"},
    {"key":"chi","title":"Chile","code":"CHI"},
    {"key":"uru","title":"Uruguay","code":"URU"},
    {"key":"col","title":"Colombia","code":"COL"},
    {"key":"ecu","title":"Ecuador","code":"ECU"},
    {"key":"aus","title":"Australia","code":"AUS"},
    {"key":"jpn","title":"Japan","code":"JPN"},
    {"key":"kor","title":"South Korea","code":"KOR"},
    {"key":"irn","title":"Iran","code":"IRN"}
  ]
}
```
