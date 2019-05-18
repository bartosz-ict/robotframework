#!/bin/bash
#setup versions
JDK_VERSION=8
RED_VERSION=0.8.11

echo "Update system"
apt-get update -y

echo "Installeer openjdk"
apt-get install openjdk-$JDK_VERSION-jdk -y

echo "Download en installeer RED Editor"
cd /tmp
wget https://github.com/nokia/RED/releases/download/$RED_VERSION/RED_Product_$RED_VERSION.deb
apt-get install ./RED_Product_$RED_VERSION.deb -y

echo "Installeer Robotframework en libraries"
apt-get install python3-pip python3-tk -y
pip3 install robotframework robotframework-seleniumlibrary RESTinstance

echo "Installeer Chrome"
apt-get install -y unzip xvfb libxi6 libgconf-2-4 curl
curl -sS -o - https://dl-ssl.google.com/linux/linux_signing_key.pub | apt-key add
echo "deb [arch=amd64]  http://dl.google.com/linux/chrome/deb/ stable main" >> /etc/apt/sources.list.d/google-chrome.list
apt-get -y update
apt-get -y install google-chrome-stable
echo "Bepaal versie Chromedriver en installeer"
VERSION=$(google-chrome --version)
VERSION=$(echo $VERSION| cut -d' ' -f 3)
VERSION=$(echo "${VERSION%.*}")
wget https://chromedriver.storage.googleapis.com/LATEST_RELEASE_$VERSION
VERSION=$(cat LATEST_RELEASE_$VERSION)
wget https://chromedriver.storage.googleapis.com/$VERSION/chromedriver_linux64.zip
unzip chromedriver_linux64.zip
mv chromedriver /usr/bin/chromedriver
chown root:root /usr/bin/chromedriver
chmod +x /usr/bin/chromedriver
echo "Installeer Geckodriver"
wget https://github.com/mozilla/geckodriver/releases/download/v0.24.0/geckodriver-v0.24.0-linux64.tar.gz
tar xvzf geckodriver-v0.24.0-linux64.tar.gz
mv geckodriver /usr/bin/geckodriver
chown root:root /usr/bin/geckodriver
chmod +x /usr/bin/geckodriver

echo "Installeer git"
apt-get install -y git-core

echo "Oefeningen naar vm kopieren"
mkdir /home/osboxes/workspace
cp /media/toollabsz/RFtraining /home/osboxes/workspace/RFtraining -R
chown osboxes:osboxes /home/osboxes/workspace -R
