#!/bin/bash
echo "";
echo "############### Install Ansible ###############";
ansible_installed=`which ansible | wc -l`
if [ $ansible_installed -eq 0 ]; then
  sudo apt-get install -y software-properties-common
  sudo apt-add-repository -y ppa:ansible/ansible
  sudo apt-get update -y
  sudo apt-get install -y ansible
else
  echo "=> Ansible is already installed."
fi
echo "";
echo "################ Start Ansible ################";
ansible-playbook playbook.yml -i config/inventory.yml --ask-become-pass
