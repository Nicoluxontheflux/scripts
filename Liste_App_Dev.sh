#!/bin/bash

# Teams
curl https://packages.microsoft.com/keys/microsoft.asc -o /tmp/microsoft.asc && sudo apt-key add /tmp/microsoft.asc
sudo sh -c 'echo "deb [arch=amd64] https://packages.microsoft.com/repos/ms-teams stable main" > /etc/apt/sources.list.d/teams.list'
  
sudo apt-get update
sudo apt-get install -y teams

# Docker 
sudo apt-get install -y \
    ca-certificates \
    curl \
    gnupg \
    lsb-release
curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo gpg --dearmor -o /usr/share/keyrings/docker-archive-keyring.gpg

echo \
  "deb [arch=$(dpkg --print-architecture) signed-by=/usr/share/keyrings/docker-archive-keyring.gpg] https://download.docker.com/linux/ubuntu \
  $(lsb_release -cs) stable" | sudo tee /etc/apt/sources.list.d/docker.list > /dev/null

sudo apt-get update
sudo apt-get install -y docker-ce docker-ce-cli containerd.io

# zsh
sudo apt-get install -y zsh

# Snap
sudo snap install --classic intellij-idea-ultimate
sudo snap install robo3t-snap
sudo snap install dbeaver-ce

# JDKs
sudo apt-get install -y openjdk-8-jdk openjdk-11-jdk openjdk-17-jdk
