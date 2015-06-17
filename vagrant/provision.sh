#!/bin/sh
apt-get install -y python-pip
cd /vagrant
pip install -U docker-compose
sudo docker-compose up -d