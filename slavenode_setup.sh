#!/bin/sh
chmod 777 ansible_install.sh dummyscript.sh git_install.sh maven_install.sh sonarcli.sh
sh git_install.sh 
sh ansible_install.sh
sh maven_install.sh
sh sonarcli.sh

echo "====================   Git |  Ansible |  Maven  |  SonarCLI  =================="

echo -e "\n \n \n  ===================== Git install verification======================================"
sudo git --version
echo -e "\n \n \n  ===================== Ansible install verification======================================"
sudo ansible --version
echo -e "\n \n \n  ===================== Maven install verification======================================"
sudo mvn --version
echo -e "\n \n \n  ===================== Sonar CLI install verification======================================"
sudo sonar-scanner --version
