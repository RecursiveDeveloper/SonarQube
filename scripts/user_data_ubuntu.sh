#!/bin/bash

SONARQUBE_URL="https://binaries.sonarsource.com/Distribution/sonarqube/sonarqube-9.9.1.69595.zip?_gl=1*ay3dew*_ga*NTE4MzYyODAwLjE2ODM5MDM5Mzc.*_ga_9JZ0GZ5TC6*MTY4MzkwMzkzNi4xLjEuMTY4MzkwNTUzNC41MS4wLjA."
SONARQUBE_ZIP_FILE_NAME="SonarQube.zip"
SONARQUBE_DEST_FOLDER_NAME="SonarQube_Instance"
EC2_USER="ubuntu"

echo -e "\nVerifying directory"
echo -e "---------------------------------------------\n"
pwd
cd ./home/ubuntu/
pwd

echo -e "\nInstalling dependencies"
echo -e "---------------------------------------------\n"
apt update -y && \
apt install -y openjdk-17-jdk openjdk-17-jre && \
apt install -y wget && \
apt install -y unzip

echo -e "\nDownloading SonarQube zip file"
echo -e "---------------------------------------------\n"
wget -O $SONARQUBE_ZIP_FILE_NAME $SONARQUBE_URL

echo -e "\nExtracting SonarQube zip file"
echo -e "---------------------------------------------\n"
unzip -qq $SONARQUBE_ZIP_FILE_NAME -d $SONARQUBE_DEST_FOLDER_NAME

echo -e "\nStarting SonarQube instance"
echo -e "---------------------------------------------\n"
sudo -u $EC2_USER -c 'whoami;./${SONARQUBE_DEST_FOLDER_NAME}/sonarqube*/bin/linux-x86-64/sonar.sh console'
