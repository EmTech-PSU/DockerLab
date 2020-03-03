#!/bin/bash

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
   
# install docker daemon
echo "INSTALLING DOCKER"
sudo apt-get -y install docker.io

# add current user to docker group
echo "ADDDING CURRENT USER  to DOCKER GROUP"
sudo usermod -aG docker $USER

