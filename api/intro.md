---
layout: default
title: Using the football.db HTTP JSON(P) API
permalink: /json-api-intro.html
---

# {{ page.title }}


## Examples


### List all teams for an event (league+season) `/event/:key/teams`

| Example                    |     |
| -------------------------- | --- |
| `/event/world.2014/teams`  |  World Cup 2014 Teams                  |
| `/event/en.2013_14/teams`  |  English Premier League 2013/14 Teams  |


### List all rounds for an event (league+season) `/event/:key/rounds`

| Example                     |     |
| --------------------------- | --- |
| `/event/world.2014/rounds`  | World Cup 2014 Matchdays              |
| `/event/en.2013_14/rounds`  | English Premier League 2013/14 Rounds |


### List all rounds for today or a date `/rounds/today|:YYYY.MM.DD`

| Example              |     |
| -------------------- | --- |
| `/rounds/today`      |   All rounds scheduled for today             |
| `/rounds/2014.6.30`  |   All rounds scheduled for July 30th, 2014   |


### List all games in a round for an event (league+season) `/event/:key/round/:pos|today`

| Example                          |     |
| -------------------------------- | --- |
| `/event/world.2014/round/20`     | 20th Round (=> Final)    |
| `/event/en.2012_13/round/4`      | 4th Round                |
| `/event/en.2013_14/round/today`  | English Premier League 2013/14 - all games for today's round (or if no round scheduled for today the last one or if no last one the next upcoming one). |



## Usage

In your hypertext (HTML) document using a plain vanilla cross-domain JavaScript
request (using the JSONP technique):

~~~
<script>
  function handleGames( json ) {
    // Do something with the returned data
  }
</script>

<script src="http://footballdb.herokuapp.com/api/event/en.2013_14/round/4?callback=handleGames"></script>
~~~


Or using the jQuery library using the [`getJSON()` function](http://api.jquery.com/jQuery.getJSON):

~~~
$.getJSON('http://footballdb.herokuapp.com/api/event/en.2013_14/round/4?callback=?', function(json) {
    // Do something with the returned data
});
~~~

Note: Add the `callback=?` query parameter to tell jQuery to use a cross-domain JSONP request.

That's it.
