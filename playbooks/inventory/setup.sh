#!/bin/sh
mkdir -p _venv_
cd _venv_
sudo pip install virtualenv
virtualenv .
source bin/activate
pip install boto
pip install docker-py
cd ..


# vagrant
vagrant up

# refresh the argument
pkill ssh-agent
eval $(ssh-agent)
ps -ef | grep ssh-agent
ssh-add .vagrant/machines/default/virtualbox/private_key
ssh-add -L

#ssh vagrant@127.0.0.1 -p 2222 -i /Users/tzoght/Ansible/vm/.vagrant/machines/default/virtualbox/private_key
pwd
