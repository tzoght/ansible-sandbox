cd #!/bin/sh
mkdir -p pwd
cd _v_dynamicvagrant
sudo pip install virtualenv
virtualenv .
source bin/activate
pip install boto
pip install docker-py
pip install paramiko
pip install argparse
cd ..
pwd
