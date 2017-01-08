---
layout: default
title: Create Your Own Simple Build Script (Rakefile) from Scratch
---

> Note: The recommended and easiest way to build yourself
> your own database copies (e.g. football.db, worlcup.db, etc.)
> is using Datafiles. See the
> [`openfootball/datafile`](https://github.com/openfootball/datafile) repo
> for more info. To download and build all datasets from scratch, for example,
> use the `$ sportdb new max` command using
> the [`max.rb` Datafile](https://github.com/openfootball/datafile/blob/master/max.rb).



# {{ page.title }}


As an alternative you can use a build script (`Rakefile`)
to build your own `football.db` copy.


Example - `Rakefile`:

```
BUILD_DIR = "./build"

FOOTBALL_DB_PATH = "#{BUILD_DIR}/football.db"

DB_CONFIG = {
  :adapter   =>  'sqlite3',
  :database  =>  FOOTBALL_DB_PATH
}

directory BUILD_DIR

task :clean do
  rm FOOTBALL_DB_PATH if File.exists?( FOOTBALL_DB_PATH )
end

task :env => BUILD_DIR do
 require 'worlddb'  
 require 'sportdb'
 require 'logutils/db'

 LogUtils::Logger.root.level = :info

 pp DB_CONFIG
 ActiveRecord::Base.establish_connection( DB_CONFIG )
end

task :create => :env do
  LogDb.create
  WorldDb.create
  SportDb.create
end

task :importworld => :env do
  WorldDb.read_setup( 'setups/sport.db.admin', '../world.db', skip_tags: true )  # populate world tables
  # WorldDb.stats
end

task :importsport => :env do
  SportDb.read_builtin
  SportDb.read_setup( 'setups/all', '../openfootball/at-austria' )
  # SportDb.stats
end

desc 'footballdb - build from scratch'
task :build => [:clean, :create, :importworld, :importsport] do
  puts 'Done.'
end
```
