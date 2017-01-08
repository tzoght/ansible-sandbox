#!/bin/sh
deactivate
rm -rf _venv_
ps -ef | grep ssh-agent
pkill ssh-agent
ps -ef | grep ssh-agent
vagrant destroy --force
