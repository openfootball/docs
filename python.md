---
layout: default
title: Using the football.db with Pyhton
---

# {{ page.title }}


## Django Models

Thanks to Kevin Christopher Henry
for putting together the models for acessing the fooltball.db from Django
e.g.

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
    club = models.BooleanField(default=False)  # "basically a reverse copy of the national flag and, thus, redundant"
    since = models.IntegerField(blank=True, null=True)
    address = models.TextField(blank=True, null=True)
    web = models.TextField(blank=True, null=True)
    assoc = models.ForeignKey(Assoc, models.SET_NULL, blank=True, null=True, db_index=False, related_name="teams")
    national = models.BooleanField(default=False)
    created_at = models.DateTimeField(blank=True, null=True)
    updated_at = models.DateTimeField(blank=True, null=True)
```

see the [Gist `models.py`](https://gist.github.com/marfire/44822f94af25f11a2fda5beba2593229) for comments and for all models.
