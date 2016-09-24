# PPIS Volunteer and Event Management System

This is the PPIS volunteer and event management system

## MAIN FEATURES ##

* Admin - to manage the centers, volunteers and events
* Volunteers - to sign-in/log-in so they can volunteer for events, and also manage their own profile

## System Dependencies

The following are needed by this project:

* [PostgreSQL](http://www.postgresql.org/) at least version 9.4

## Getting Started

Clone this repository and bundle.

    git clone git@github.com:TechLadies/ppis.git
    cd ppis
    bundle install

Create a `database.yml` file from the sample and modify if necessary.
The defaults should be fine.

    cp config/database.yml.sample config/database.yml

Create a `.env` file from the sample so [dotenv](https://github.com/bkeepers/dotenv) can set the required environment variables.
Please obtain any missing values from the project administrator.

    cp .env.sample .env

Create and initialize the database.

    rake db:create db:migrate db:seed

Start the application server.

    rails server

Access the application at [http://localhost:3000/](http://localhost:3000/).

## Branch Policy

Local development branch naming:

* `feature/<branch_name>` for substantial new feature or function
* `enhance/<branch_name>` for minor feature or function enhancement
* `bugfix/<branch_name>` for bug fixes

* `development` for staging; branch out from this to create and/or enhance existing feature(s);
* `master` for production only

## Deployment

The application is deployed to [Heroku](https://www.heroku.com/) at:

* [Production](https://ppis.herokuapp.com/)
* [Staging](https://ppis-staging.herokuapp.com/)

### Raising a bug, issue, or suggestions?

Create an issue at [Hausie Github Issue](https://github.com/tinkerbox/hug-property/issues)

### Questions?

If you have any questions, feel free to ask at #hugproperty channel on Slack
