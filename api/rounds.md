---
layout: default
title: Rounds
permalink: /json-api-rounds.html
---

# {{ page.title }}

## GET rounds for an event (league+season)

- `/event/:key/rounds`

Examples:

- `/event/world.2014/rounds`  -- World Cup Rounds (Brazil 2014)
- `/event/de.2013_14/rounds`  -- Deutsche Bundesliga Rounds (Season 2013/14)

Results:

```json
{
  "event":{
    "key":"world.2014",
    "title":"World Cup 2014"},
  "rounds":[
    {"pos":1,"title":"Matchday 1","start_at":"2014/06/12","end_at":"2014/06/12"},
    {"pos":2,"title":"Matchday 2","start_at":"2014/06/13","end_at":"2014/06/13"},
    {"pos":3,"title":"Matchday 3","start_at":"2014/06/14","end_at":"2014/06/14"},
    {"pos":4,"title":"Matchday 4","start_at":"2014/06/15","end_at":"2014/06/15"},
    {"pos":5,"title":"Matchday 5","start_at":"2014/06/16","end_at":"2014/06/16"},
    {"pos":6,"title":"Matchday 6","start_at":"2014/06/17","end_at":"2014/06/17"},
    {"pos":7,"title":"Matchday 7","start_at":"2014/06/18","end_at":"2014/06/18"},
    {"pos":8,"title":"Matchday 8","start_at":"2014/06/19","end_at":"2014/06/19"},
    {"pos":9,"title":"Matchday 9","start_at":"2014/06/20","end_at":"2014/06/20"},
    {"pos":10,"title":"Matchday 10","start_at":"2014/06/21","end_at":"2014/06/21"},
    {"pos":11,"title":"Matchday 11","start_at":"2014/06/22","end_at":"2014/06/22"},
    {"pos":12,"title":"Matchday 12","start_at":"2014/06/23","end_at":"2014/06/23"},
    {"pos":13,"title":"Matchday 13","start_at":"2014/06/24","end_at":"2014/06/24"},
    {"pos":14,"title":"Matchday 14","start_at":"2014/06/25","end_at":"2014/06/25"},
    {"pos":15,"title":"Matchday 15","start_at":"2014/06/26","end_at":"2014/06/26"},
    {"pos":16,"title":"Round of 16","start_at":"1912/01/01","end_at":"1912/01/01"},
    {"pos":17,"title":"Quarter-finals","start_at":"1912/01/01","end_at":"1912/01/01"},
    {"pos":18,"title":"Semi-finals","start_at":"1912/01/01","end_at":"1912/01/01"},
    {"pos":19,"title":"Match for third place","start_at":"1912/01/01","end_at":"1912/01/01"},
    {"pos":20,"title":"Final","start_at":"1912/01/01","end_at":"1912/01/01"}]
}
```


## GET rounds for today or a date

- `/rounds/today|:YYYY.MM.DD`

Examples:

- `/rounds/today`
- `/rounds/2013.6.30`

Results:

```json
{
  "rounds":[
    {"pos":20,"title":"20. Spieltag","start_at":"2014/02/08","end_at":"2014/02/08",
     "event":{
       "key":"de.2013/14","title":"Deutsche Bundesliga 2013/14"}},
    {"pos":22,"title":"22. Runde","start_at":"2014/02/08","end_at":"2014/02/08",
     "event":{
       "key":"at.2013/14","title":"Österr. Bundesliga 2013/14"}}]
}
```
