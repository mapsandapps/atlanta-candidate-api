# README

### Quick Start

* bundle install
* rake db:migrate
* rake db:seed
* rails s
* edit candidate information through rails admin by going to /admin (generic login info in secrets.yml for now)

### Endpoints

* api/candidates (returns all candidates, organized by office)
* api/candidates/?address=1234 Terminus Rd, Atlanta GA (Returns district for that Atlanta address)
* api/candidates/?citywide=true (Includes citywide candidates)
* api/districts/:id (returns all candidates for that district)
* api/candidates/:id (Returns only candidate specified)
