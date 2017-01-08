---
layout: default
title: Games
permalink: /json-api-games.html
---


# {{ page.title }}

## GET games in a round for an event (league+season)

- `/event/:key/round/:pos|today`

Examples:

- `/event/world.2014/round/2`     -- World Cup Matchday 2 (Brazil 2014)
- `/event/de.2013_14/round/today` -- Deutsche Bundesliga Today's Round (Season 2013/14)


Results:

```json
{
  "event":
    {"key":"world.2014","title":"World Cup 2014"},
  "round":
    {"pos":2,"title":"Matchday 2","start_at":"2014/06/13","end_at":"2014/06/13"},
  "games":[
    {"team1_key":"mex","team1_title":"Mexico","team1_code":"MEX","team2_key":"cmr","team2_title":"Cameroon","team2_code":"CMR","play_at":"2014/06/13","score1":null,"score2":null,"score1ot":null,"score2ot":null,"score1p":null,"score2p":null},
    {"team1_key":"esp","team1_title":"Spain","team1_code":"ESP","team2_key":"ned","team2_title":"Netherlands","team2_code":"NED","play_at":"2014/06/13","score1":null,"score2":null,"score1ot":null,"score2ot":null,"score1p":null,"score2p":null},
    {"team1_key":"chi","team1_title":"Chile","team1_code":"CHI","team2_key":"aus","team2_title":"Australia","team2_code":"AUS","play_at":"2014/06/13","score1":null,"score2":null,"score1ot":null,"score2ot":null,"score1p":null,"score2p":null}]
}
```
