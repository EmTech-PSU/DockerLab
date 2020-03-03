#!/bin/bash

#--- MAKE THIS FILE AN EXECUTABLE ---#
#--- use the following command as root: chmod -x pi-install.sh ---#

# update and upgrade system
echo "UPDATE AND UPGRADING"
sudo apt-get -y update
sudo apt-get -y upgrade

# get pre-requisite packages
echo "INSTALLING DEPENDENCIES"
sudo apt-get -y install \
  apt-transport-https \
  ca-certificates \
  curl \
  gnupg2 \
  software-properties-common
   
# download docker from get.docker.com
echo "DOWNLOADING DOCKER"
curl -fsSL https://get.docker.com -o get-docker.sh

# run installation script
echo "RUNNING INSTALL SCRIPT"
sh get-docker.sh 

# add current user to docker group
echo "ADDDING CURRENT USER  to DOCKER GROUP"
sudo usermod -aG docker $USER

#add python dependencies for docker-compose
echo "ADDING DOCKER-COMPOSE DEPENDENCIES"
sudo apt-get install -y libffi-dev libssl-dev
sudo apt-get install -y python python-pip
sudo apt-get remove -y python-configparser

#install docker compose
sudo apt-get install -y docker-compose
