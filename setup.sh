#!/bin/bash

apt-get install -y ansible
ansible-galaxy collection install kubernetes.core
ansible-playbook --connection=local -i hosts.yml -e "@extra.yml" setup.yml
