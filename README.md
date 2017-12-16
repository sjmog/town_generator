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

- [Names](./lib/names.rb)
- [Races](./lib/races.rb)
- [Classes ('Occupations')](./lib/classes.rb)
- [Levels](./lib/levels.rb)

## Tech

Rails and SQLite.
