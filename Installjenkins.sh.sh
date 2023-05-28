#!/bin/sh
ls

##URL https://www.jenkins.io/doc/tutorials/tutorial-for-installing-jenkins-on-AWS/
##Before running this script give this command ====> #chmod 777 filename.sh and export PATH=$PATH:$HOME
## Jenkins password path ====>  cat /var/lib/jenkins/secrets/initialAdminPassword



sudo yum update -y
sudo wget -O /etc/yum.repos.d/jenkins.repo https://pkg.jenkins.io/redhat-stable/jenkins.repo
sudo rpm --import https://pkg.jenkins.io/redhat-stable/jenkins.io-2023.key
sudo yum upgrade
sudo dnf install java-11-amazon-corretto -y
sudo yum install jenkins -y
sudo systemctl enable jenkins
sudo systemctl start jenkins
sleep 50s
sudo systemctl status jenkins
