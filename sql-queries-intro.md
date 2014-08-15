---
layout: default
title: Common football.db SQLite Queries
---

# {{ page.title }}

Example queries to get started with the football.db database.

 - [List of German Bundesliga Seasons](#deseasons)
 - [List of English Teams](#engteams)
 - [List World Cup Brazil 2014 Games](#wc14games)
 - [List World Cup Brazil 2014 Teams](#wc14teams)
 - [List World Cup Brazil 2014 Rounds](#wc14rounds)


## Using SQL View Queries

### Football Club Leagues n Clubs Examples

#### List German Bundesliga Events (Seasons)

~~~
SELECT *
  FROM events_list
 WHERE league_key = 'de';
~~~

#### List English Teams

~~~
SELECT *
  FROM teams_list
 WHERE country_key = 'en';
~~~


### World Cup Brazil 2014 Examples

Note: The event key for the world cup in Brazil 2014 is `world.2014`

#### List World Cup 2014 Games

~~~
SELECT *
  FROM events_games_list
 WHERE event_key = 'world.2014';
~~~


#### List World Cup Brazil 2014 Teams

~~~
SELECT *
  FROM events_teams_list
 WHERE event_key = 'world.2014'
~~~


####  List World Cup Brazil 2014 Rounds

~~~
SELECT *
  FROM event_rounds_list
 WHERE event_key = 'world.2014'
~~~

####  List World Cup Brazil 2014 Groups

~~~
SELECT *
  FROM event_groups_list
 WHERE event_key = 'world.2014'
~~~




## Using SQL Table Queries

### Football Club Leagues n Clubs Examples

#### List German Bundesliga Seasons   {#deseasons}


~~~
SELECT l.title, 
       s.*, 
       e.*
  FROM seasons s
       INNER JOIN events e ON e.season_id = s.id
       INNER JOIN leagues l ON l.id = e.league_id
 WHERE l.key = 'de';
~~~


#### List English Teams   {#engteams}

~~~
SELECT c.name, 
       t.*
  FROM teams t
       INNER JOIN countries c ON c.id = t.country_id
 WHERE c.key = 'en';
~~~



### World Cup Brazil 2014 Examples

Note: The event key for the world cup in Brazil 2014 is `world.2014`



#### List World Cup 2014 Games   {#wc14games}


~~~
SELECT t1.title, 
       t2.title, 
       g.*
  FROM games g
       INNER JOIN teams t1 ON t1.id = g.team1_id
       INNER JOIN teams t2 ON t2.id = g.team2_id
       INNER JOIN rounds r ON r.id = g.round_id
       INNER JOIN events e ON e.id = r.event_id
 WHERE e.key = 'world.2014'
~~~


#### List World Cup Brazil 2014 Teams   {#wc14teams}

~~~
SELECT t.*
  FROM teams t
       INNER JOIN events_teams et ON et.team_id = t.id
       INNER JOIN events e ON e.id = et.event_id
 WHERE e.key = 'world.2014'
~~~


####  List World Cup Brazil 2014 Rounds   {#wc14rounds}

~~~
SELECT *
  FROM rounds r
       INNER JOIN events e ON e.id = r.event_id
 WHERE e.key = 'world.2014'
~~~
