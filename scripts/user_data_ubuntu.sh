#!/bin/bash

SONARQUBE_HOST_PORT=9000

echo -e "\n---------------------------------------------"
echo "Removing docker resources if exist"
echo -e "---------------------------------------------\n"
sudo apt-get purge -y docker-ce docker-ce-cli containerd.io docker-buildx-plugin docker-compose-plugin docker-ce-rootless-extras
sudo rm -rf /var/lib/docker
sudo rm -rf /var/lib/containerd
sudo rm -rf /etc/apt/keyrings

echo -e "\n---------------------------------------------"
echo "Installing dependencies"
echo -e "---------------------------------------------\n"
sudo apt-get update -y
sudo apt-get -y install ca-certificates curl gnupg

echo -e "\n---------------------------------------------"
echo "Adding Docker's official GPG key"
echo -e "---------------------------------------------\n"
sudo install -m 0755 -d /etc/apt/keyrings
curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo gpg --dearmor -o /etc/apt/keyrings/docker.gpg
sudo chmod a+r /etc/apt/keyrings/docker.gpg

echo -e "\n---------------------------------------------"
echo "Setting up repository"
echo -e "---------------------------------------------\n"
echo \
  "deb [arch="$(dpkg --print-architecture)" signed-by=/etc/apt/keyrings/docker.gpg] https://download.docker.com/linux/ubuntu \
  "$(. /etc/os-release && echo "$VERSION_CODENAME")" stable" | \
  sudo tee /etc/apt/sources.list.d/docker.list > /dev/null

echo -e "\n---------------------------------------------"
echo "Installing docker resources"
echo -e "---------------------------------------------\n"
sudo apt-get update -y
sudo apt-get install -y docker-ce docker-ce-cli containerd.io docker-buildx-plugin docker-compose-plugin

echo -e "\n---------------------------------------------"
echo "Checking docker service"
echo -e "---------------------------------------------\n"
sudo ps aux | grep docker

echo -e "\n---------------------------------------------"
echo "Running sonarqube container on port ${SONARQUBE_HOST_PORT}"
echo -e "---------------------------------------------\n"
sudo docker run -d --name sonarqube -e SONAR_ES_BOOTSTRAP_CHECKS_DISABLE=true -p $SONARQUBE_HOST_PORT:9000 sonarqube:latest
sudo docker ps -a
