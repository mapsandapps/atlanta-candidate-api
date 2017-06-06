# README

## Quick Start

* bundle install
* rake db:migrate
* rake db:seed
* rails s
* edit candidate information through rails admin by going to /admin (generic login info in secrets.yml for now)

## Endpoints

* api/candidates (returns all candidates, organized by office)
* api/candidates/?address=1234 Terminus Rd, Atlanta GA (Returns district for that Atlanta address)
* api/candidates/?citywide=true (Includes citywide candidates)
* api/districts/:id (returns all candidates for that district)
* api/candidates/:id (Returns only candidate specified)

## Development Notes

### Database

Disclaimer: Heroku [encourages](https://devcenter.heroku.com/articles/getting-started-with-rails5) using PostgreSQL in development to maintain parity between dev/prod environments.

But, to get things going right out of the box without having a local Postgres server, you can explicitly specify an [SQLite](https://www.sqlite.org/) database by typing the following prior to starting your local server:

```shell
export DATABASE_URL=sqlite3:db/development.sqlite3
```
