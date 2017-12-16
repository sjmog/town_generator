# Town Generator

Generates towns for Dungeons and Dragons 5e.

## Getting started

Clone this repo. Then:

```
bundle install
rake db:create
rake db:migrate
rails s
```

## Configuring

- [Names](/lib/name.rb)
- [Races](/lib/race.rb)
- [Classes ('Occupations')](/lib/occupation.rb)
- [Levels](/lib/level.rb)

## Tech

Rails and SQLite.
