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
select l.title, s.*, e.*
from seasons s
inner join events e on e.season_id = s.id
inner join leagues l on l.id = e.league_id
where l.key = 'de';
~~~


#### List English Teams   {#engteams}

~~~
select c.name, t.*
from teams t
inner join countries c on c.id = t.country_id
where c.key = 'en';
~~~



### World Cup Brazil 2014 Examples

Note: The event key for the world cup in Brazil 2014 is `world.2014`



#### List World Cup 2014 Games   {#wc14games}


~~~
select t1.title, t2.title, g.*
from games g
left outer join teams t1 on t1.id = g.team1_id
left outer join teams t2 on t2.id = g.team2_id
inner join rounds r on r.id = g.round_id
inner join events e on e.id = r.event_id
where e.key = 'world.2014'
~~~


#### List World Cup Brazil 2014 Teams   {#wc14teams}

~~~
select t.*
from teams t
inner join event_teams et on et.team_id = t.id
inner join events e on e.id = et.event_id
where e.key = 'world.2014'
~~~


####  List World Cup Brazil 2014 Rounds   {#wc14rounds}

~~~
select *
from rounds r
inner join events e on e.id = r.event_id
where e.key = 'world.2014'
~~~
