#!/bin/bash
sudo systemctl stop firewalld
mkdir wgets
cd wgets
camflow -a true
/usr/local/bin/wget http://mirrors.kernel.org/ubuntu/pool/universe/g/gcc-6/gcc-6-base_6.4.0-17ubuntu1_amd64.deb
sudo dpkg -i gcc-6-base_6.4.0-17ubuntu1_amd64.deb
rm gcc-6-base_6.4.0-17ubuntu1_amd64.deb
sleep 5
/usr/local/bin/wget --tries=2 -nv amazon.com/
sleep 6
/usr/local/bin/wget https://github.com/angryip/ipscan/releases/download/3.5.5/ipscan_3.5.5_amd64.deb
sudo dpkg -i ipscan_3.5.5_amd64.deb
rm ipscan_3.5.5_amd64.deb
sleep 4
/usr/local/bin/wget --tries=2 --no-cookies imdb.com/
sleep 8
/usr/local/bin/wget https://github.com/angryip/ipscan/releases/download/3.5.5/ipscan_3.5.5_amd64.deb
sudo dpkg -i ipscan_3.5.5_amd64.deb
rm ipscan_3.5.5_amd64.deb
sleep 8
/usr/local/bin/wget --tries=2 --no-cookies tumblr.com/
sleep 6
/usr/local/bin/wget --tries=2 --no-cookies yelp.com/
sleep 5
/usr/local/bin/wget http://mirrors.kernel.org/ubuntu/pool/universe/s/sx/sx_2.0+ds-4build2_amd64.deb
sudo dpkg -i sx_2.0+ds-4build2_amd64.deb
rm sx_2.0+ds-4build2_amd64.deb
sleep 6
/usr/local/bin/wget http://mirrors.kernel.org/ubuntu/pool/universe/s/sx/sx_2.0+ds-4build2_amd64.deb
sudo dpkg -i sx_2.0+ds-4build2_amd64.deb
rm sx_2.0+ds-4build2_amd64.deb
sleep 5
/usr/local/bin/wget http://mirrors.kernel.org/ubuntu/pool/main/b/bc/dc_1.07.1-2_amd64.deb
sudo dpkg -i dc_1.07.1-2_amd64.deb
rm dc_1.07.1-2_amd64.deb
sleep 7
/usr/local/bin/wget --tries=2 --no-check-certificate amazon.com/
sleep 5
/usr/local/bin/wget --tries=2 --content-on-error facebook.com/
sleep 6
/usr/local/bin/wget --tries=2 --auth-no-challenge creativecommons.org/
sleep 5
/usr/local/bin/wget --tries=2 --auth-no-challenge nih.gov/
sleep 7
/usr/local/bin/wget https://github.com/angryip/ipscan/releases/download/3.5.5/ipscan_3.5.5_amd64.deb
sudo dpkg -i ipscan_3.5.5_amd64.deb
rm ipscan_3.5.5_amd64.deb
sleep 10
/usr/local/bin/wget http://mirrors.kernel.org/ubuntu/pool/main/b/bc/dc_1.07.1-2_amd64.deb
sudo dpkg -i dc_1.07.1-2_amd64.deb
rm dc_1.07.1-2_amd64.deb
sleep 9
/usr/local/bin/wget --tries=2 --follow-ftp cnn.com/
sleep 4
/usr/local/bin/wget --tries=2 -V wikipedia.org/
sleep 6
/usr/local/bin/wget --tries=2 -o /dev/null amazon.com/
sleep 8
/usr/local/bin/wget --tries=2 --auth-no-challenge linkedin.com/
sleep 7
/usr/local/bin/wget --tries=2 --keep-session-cookies dropbox.com/
sleep 4
/usr/local/bin/wget --tries=2 --no-use-server-timestamps msn.com/
sleep 3
/usr/local/bin/wget --tries=2 --show-progress github.com/
sleep 4
/usr/local/bin/wget --tries=2 --no-dns-cache wp.com/
sleep 1
/usr/local/bin/wget --tries=2 --no-cookies apple.com/
sleep 5
/usr/local/bin/wget --tries=2 -nv ebay.com/
sleep 2
/usr/local/bin/wget --tries=2 -v bloomberg.com/
sleep 3
/usr/local/bin/wget --tries=2 -o /dev/null w3.org/
sleep 5
/usr/local/bin/wget https://github.com/angryip/ipscan/releases/download/3.5.5/ipscan_3.5.5_amd64.deb
sudo dpkg -i ipscan_3.5.5_amd64.deb
rm ipscan_3.5.5_amd64.deb
sleep 3
/usr/local/bin/wget http://ftp.osuosl.org/pub/ubuntu/pool/universe/f/fonts-adf/fonts-adf-accanthis_0.20110505-1_all.deb
sudo dpkg -i fonts-adf-accanthis_0.20110505-1_all.deb
rm fonts-adf-accanthis_0.20110505-1_all.deb
sleep 7
sudo camflow -a false
sleep 10
cp /tmp/audit.log /vagrant/data/wget-normal-68.log
cd ..
rm -rf wgets
