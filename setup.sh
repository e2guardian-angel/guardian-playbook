#!/bin/bash

apt-get install -y ansible

ansible-playbook --connection=local -i hosts.yml -e "@extra.yml" site.yml

