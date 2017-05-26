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
### TODOS
- turn todos into issues
- turn address tool into stand alone endpoint (return district id)
- discuss best way to keep candidate information up to date
- discuss api format... do we need to add versioning, scope candidates by election, any missing properties, etc.
- what does simple front end build out look like
- turn todos into issues