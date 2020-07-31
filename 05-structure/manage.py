#!/usr/bin/env python
import os
from app import create_app
#from flask.ext.script import Manager
from flask_script import Manager, Server

manager = Manager(create_app)
manager.add_command('runserver', Server(host='0.0.0.0', port=5000))

@manager.command
def test():
    from subprocess import call

    os.environ['FLASK_CONFIG'] = 'testing'
    call(['nosetests', '-v',
          '--with-coverage', '--cover-package=app', '--cover-branches',
          '--cover-erase', '--cover-html', '--cover-html-dir=cover'])

if __name__ == '__main__':
    manager.run()
