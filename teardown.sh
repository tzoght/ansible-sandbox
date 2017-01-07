#!/bin/sh
deactivate
cd vm
vagrant destroy
cd ..
rm -rf _venv_
