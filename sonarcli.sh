#!/bin/sh
sudo wget https://binaries.sonarsource.com/Distribution/sonar-scanner-cli/sonar-scanner-cli-4.5.0.2216-linux.zip
sudo unzip sonar-scanner-cli-4.5.0.2216-linux.zip
sudo mkdir /opt/sonar-scanner
sudo mv sonar-scanner-4.5.0.2216-linux/* /opt/sonar-scanner/
sudo ln -s /opt/sonar-scanner/bin/sonar-scanner /bin/sonar-scanner
sudo sonar-scanner --version
