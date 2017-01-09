#!/bin/sh
deactivate
rm -rf _v_dynamicinventory
ps -ef | grep ssh-agent
pkill ssh-agent
ps -ef | grep ssh-agent
vagrant destroy --force
