Python Web Development with Flask
=================================

This repository contains the source code that I demonstrate in my "Python Web Development with Flask" presentation.

Requirements
------------

To install and run these examples you need:

Debian/Ubuntu packages:
- docker
- python3-pip

Pip packages:
- docker-compose

Installation
------------

The commands below set everything up to run the examples:

    $ cd flask-examples
    $ ./build.sh
    $ ./run.sh
    $ ./cleanup.sh

To completely remove previous images and build a new image run:

    $ cd flask-examples
    $ ./cleanup.sh --reset
    $ ./build.sh

Microsoft Windows users: this has been tested in WSL 2 and Ubuntu 20.04. 
