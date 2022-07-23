#!/bin/bash

apt-get install -y ansible

ansible-playbook --connection=local --inventory 127.0.0.1 --limit 127.0.0.1 site.yml -K

