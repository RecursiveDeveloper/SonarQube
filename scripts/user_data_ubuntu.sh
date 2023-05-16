#!/bin/bash

SONARQUBE_USER="sonarqube"
BINARY_PATH="https://binaries.sonarsource.com/Distribution/sonarqube/sonarqube-9.4.0.54424.zip"
ZIP_FILE_NAME="sonarqube_install.zip"
UNZIPPED_FILE_NAME="sonarqube_install"

echo -e "\n---------------------------------------------"
echo -e "Installing dependencies"
echo -e "---------------------------------------------\n"
sudo apt update     -y
sudo apt install    -y openjdk-11-jre-headless
sudo apt install    -y unzip
sudo apt install    -y net-tools

echo -e "\n---------------------------------------------"
echo -e "Add user and get installer"
echo -e "---------------------------------------------\n"
sudo useradd $SONARQUBE_USER
wget $BINARY_PATH -O $ZIP_FILE_NAME
unzip $ZIP_FILE_NAME -d $UNZIPPED_FILE_NAME

echo -e "\n---------------------------------------------"
echo -e "Change permissions"
echo -e "---------------------------------------------\n"
sudo chmod -R 755 ./$UNZIPPED_FILE_NAME
sudo chown -R sonarqube:sonarqube ./$UNZIPPED_FILE_NAME

./sonarqube_install/sonarqube*/bin/linux*/sonar.sh start
