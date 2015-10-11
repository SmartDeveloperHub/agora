#!/bin/sh
 
# Clone examples
apt-get install python-dev python-virtualenv -y
apt-get remove python-pip
easy_install pip
git clone https://github.com/smartdeveloperhub/agora-examples.git
cd agora-examples/ld-movies-service
pip install -r requirements.txt

# Build docker containers
cd /vagrant
sudo docker-compose rm -f
sudo docker-compose build

