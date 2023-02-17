#!/bin/bash

apt-get install -y ansible
CMDLINE_BEFORE=$(shasum -a 256 /boot/cmdline.txt | cut -d' ' -f1)
ansible-playbook --connection=local -i hosts.yml prepare-rpi.yml
CMDLINE_AFTER=$(shasum -a 256 /boot/cmdline.txt | cut -d' ' -f1)

if [[ "$CMDLINE_BEFORE" == "$CMDLINE_AFTER" ]]; then
    echo "cmdline.txt not changed; no need to reboot"
else
    echo "cmdline.txt changed, rebooting..."
    reboot
fi