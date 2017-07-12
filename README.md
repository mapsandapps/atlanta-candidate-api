# README

## Prerequisite
* Postgres
* Postgres DB `atlanta_candidate_api_development`
```bash
$ createdb atlanta_candidate_api_development
```

## Quick Start

* bundle install
* rake db:migrate
* rake db:seed
* rails s
* edit candidate information through rails admin by going to /admin (generic login info in secrets.yml for now)

## Endpoints (Version 1)

* api/v1/offices (returns all offices, with candidates included)
* api/v1/offices/?district_id=1 (Returns offices with that district id [including candidates])
* api/v1/offices/?citywide=true (Citywide offices [mayor, at large, etc])
* use citywide & district_id in combination to return that set of offices
* api/v1/offices/?slug=city-council-president (include slug param to get back a particular office)
* api/v1/districts/?address=1234 Main St, Atlanta GA (returns district_id for that address)
* api/v1/candidates/:id (Returns only candidate specified)

## Development Notes

### Database

Disclaimer: Heroku [encourages](https://devcenter.heroku.com/articles/getting-started-with-rails5) using PostgreSQL in development to maintain parity between dev/prod environments.

But, to get things going right out of the box without having a local Postgres server, you can explicitly specify an [SQLite](https://www.sqlite.org/) database by typing the following prior to starting your local server:

```shell
export DATABASE_URL=sqlite3:db/development.sqlite3
```
