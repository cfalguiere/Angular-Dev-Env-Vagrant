#!/bin/bash -e

cd /vagrant

echo "Starting at $( date )"

echo '######################'
echo 'Updating apt'
echo '######################'

sudo apt-get update
sudo locale-gen en_US.UTF-8
sudo locale-gen fr_FR.UTF-8

echo '######################'
echo 'Installing node packages'
echo '######################'

sudo apt-get -y install git
sudo apt-get -y install nodejs
sudo apt-get install nodejs-legacy
sudo apt-get -y install npm

npm update

echo '######################'
echo 'Installing yeoman'
echo '######################'

sudo npm install -g yo bower grunt-cli
sudo npm install -g generator-angular

sudo npm update -g yo

echo "Ending at $( date )"

exit




