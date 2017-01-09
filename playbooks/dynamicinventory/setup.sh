#!/bin/sh
mkdir -p _v_dynamicinventory
cd _v_dynamicinventory
sudo pip install virtualenv
virtualenv .
source bin/activate
pip install boto
pip install docker-py
pip install paramiko
pip install argparse
cd ..


# vagrant
vagrant up

# refresh the argument
# pkill ssh-agent
# eval $(ssh-agent)
# ps -ef | grep ssh-agent
# ssh-add .vagrant/machines/vagrant1/virtualbox/private_key
# ssh-add .vagrant/machines/vagrant2/virtualbox/private_key
# ssh-add .vagrant/machines/vagrant3/virtualbox/private_key
# ssh-add -L

#ssh vagrant@127.0.0.1 -p 2222 -i /Users/tzoght/Ansible/vm/.vagrant/machines/default/virtualbox/private_key
pwd
