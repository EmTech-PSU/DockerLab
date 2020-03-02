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

# add docker repository for arm processesors
echo "ADDING DOCKER REPO FOR PI"
sudo add-apt-repository \
   "deb [arch=arm64] https://download.docker.com/linux/debian \
   $(lsb_release -cs) \
   stable"
   
# install docker daemon
echo "INSTALLING DOCKER"
sudo apt-get -y install docker-ce docker-ce-cli containerd.io

# add current user to docker group
echo "ADDDING $USER to DOCKER GROUP"
sudo usermod -aG docker $USER
