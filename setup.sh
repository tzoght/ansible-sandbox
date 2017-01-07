#!/bin/sh
mkdir -p _venv_
cd _venv_
sudo pip install virtualenv
virtualenv .
source bin/activate
pip install boto
pip install docker-py
cd ..
cd vm
vagrant up
vagrant ssh-config

#ssh vagrant@127.0.0.1 -p 2222 -i /Users/tzoght/Ansible/vm/.vagrant/machines/default/virtualbox/private_key
## ssh-agent 
#eval $(ssh-agent)
#ssh-add .vagrant/machines/default/virtualbox/private_key
#ssh-add -L



cd ..
