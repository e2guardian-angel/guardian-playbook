#!/bin/bash

apt-get install -y ansible
pip3 install openshift pyyaml kubernetes --user
ansible-galaxy collection install kubernetes.core
ansible-playbook --connection=local -i hosts.yml -e "@extra.yml" setup.yml
