#!/bin/sh
sh Installjenkins.sh
sh Git install.sh
sh Ansible_install.sh
sh Maven_install.sh
sh Sonarscanner_install.sh
echo "==================== Jenkins |  Git |  Ansible |  Maven  |  SonarCLI  =================="

echo -e "\n \n \n  ===================== Jenkins install verification======================================"
sudo systemctl status jenkins
echo -e "\n \n \n  ===================== Git install verification======================================"
sudo git --version
echo -e "\n \n \n  ===================== Ansible install verification======================================"
sudo ansible --version
echo -e "\n \n \n  ===================== Maven install verification======================================"
sudo mvn --version
echo -e "\n \n \n  ===================== Sonar CLI install verification======================================"
sudo sonar-scanner --version
