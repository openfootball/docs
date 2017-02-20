---
layout: default
title: Using the football.db with Python and Django
---

# {{ page.title }}


## Description

[Django](https://www.djangoproject.com/), a Python web framework, provides an Object Relational Manager (ORM) that makes it easy to query and use a database from Python. [This Gist](https://gist.github.com/marfire/44822f94af25f11a2fda5beba2593229) contains a `models.py` file that corresponds to the football.db schema. For example:

```
class Team(models.Model):
    id = models.AutoField(primary_key=True)
    key = models.CharField(max_length=3, unique=True)
    title = models.TextField()
    title2 = models.TextField(blank=True, null=True)
    code = models.CharField(max_length=3, blank=True, null=True)
    synonyms = models.TextField(blank=True, null=True)
    country = models.ForeignKey(Country, models.CASCADE, db_index=False, related_name="teams")
    city = models.ForeignKey(City, models.SET_NULL, blank=True, null=True, db_index=False, related_name="teams")
    club = models.BooleanField(default=False)
    since = models.IntegerField(blank=True, null=True)
    address = models.TextField(blank=True, null=True)
    web = models.TextField(blank=True, null=True)
    assoc = models.ForeignKey(Assoc, models.SET_NULL, blank=True, null=True, db_index=False, related_name="teams")
    national = models.BooleanField(default=False)
    created_at = models.DateTimeField(blank=True, null=True)
    updated_at = models.DateTimeField(blank=True, null=True)
```

Using this definition you can construct queries from within Django. For example, here's a query to determine how many home games Leicester City won by two goals or more in the 2015/16 English Premier League:

```
>>> Game.objects.filter(
    round__event__league__key="en",
    round__event__season__key="2015/16",
    team1__key="leicester",
    score1__gte=F("score2") + 2,
).count()

5
```

## Installation

To install and use, do the following:

1. Create a new Django app. If you're not familiar with Django, see [the tutorial](https://docs.djangoproject.com/en/dev/intro/tutorial01/).

2. Copy the [`models.py`](https://gist.github.com/marfire/44822f94af25f11a2fda5beba2593229) file to the blank one in your new app.

3. Build the football.db SQLite database, as described elsewhere in this documentation.

4. Configure Django. In particular, adjust the database settings to point to the football.db database.

5. Test the installation by running `python manage.py shell` and trying a sample command, like `Team.objects.count()`.

6. Develop your Django app!

One important thing to note is that you should use a separate database for any additional application-level data you want to store. The football.db database should be thought of as a *read-only* database, since it's derived from the source files and will need to be rebuilt when the source files change.
