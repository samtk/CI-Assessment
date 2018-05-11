#!/bin/bash


sudo apt-get update
sudo apt-get install -y git
sudo apt-get install -y default-jdk
sudo apt-get install -y maven

wget -q -O - https://pkg.jenkins.io/debian/jenkins-ci.org.key | sudo apt-key add
sudo sh -c 'echo deb http://pkg.jenkins.io/debian-stable binary/ > /etc/apt/sources.list.d/jenkins.list'
sudo apt-get update
sudo apt-get install -y jenkins

sudo wget http://www.sonatype.org/downloads/nexus-latest-bundle.zip
sudo chmod 777 nexus-2.11.4-01-bundle.zip
sudo unzip nexus-2.11.4-01-bundle.zip
cd nexus-2.11.4-01/bin
sudo RUN_AS_USER=root ./nexus start
cd