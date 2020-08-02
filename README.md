Python Web Development with Flask
=================================

Forked from: https://github.com/miguelgrinberg/flask-examples

This repository contains dockerized examples of Flask (and mongodb partly). This project is intended to be a simple (slightly more modern) example of how to work with Flask and Docker for training purposes.

Requirements
------------

To install and run these examples you need:

Debian/Ubuntu packages:
- docker
- python3-pip

Pip packages:
- docker-compose

Microsoft Windows users: 
this has been tested in WSL 2 and Ubuntu 20.04. 

Run Examples
------------

The commands below set everything up to run the examples:

    $ cd flask-examples
    $ ./run.sh 1
    $ ./run.sh 2
    $ ./run.sh 5

Default address to access examples: http://localhost:5000/

Clean Up
------------

To completely remove previous images and build a new image run:

    $ cd flask-examples
    $ ./cleanup.sh --reset

