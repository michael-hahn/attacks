#!/bin/bash
sudo systemctl stop firewalld
mkdir wgets
cd wgets
camflow -a true
/usr/local/bin/wget --tries=2   nytimes.com/
sleep 2
/usr/local/bin/wget http://mirrors.kernel.org/ubuntu/pool/main/b/bc/dc_1.07.1-2_amd64.deb
sudo dpkg -i dc_1.07.1-2_amd64.deb
rm dc_1.07.1-2_amd64.deb
sleep 8
/usr/local/bin/wget --tries=2 --keep-session-cookies google.co.uk/
sleep 6
/usr/local/bin/wget --tries=2 --keep-session-cookies digg.com/
sleep 5
/usr/local/bin/wget --tries=2 -nv wix.com/
sleep 4
/usr/local/bin/wget --tries=2   washingtonpost.com/
sleep 5
/usr/local/bin/wget --tries=2 --follow-ftp soundcloud.com/
sleep 6
/usr/local/bin/wget --tries=2 --follow-ftp instagram.com/
sleep 4
/usr/local/bin/wget http://ftp.osuosl.org/pub/ubuntu/pool/universe/f/fonts-adf/fonts-adf-accanthis_0.20110505-1_all.deb
sudo dpkg -i fonts-adf-accanthis_0.20110505-1_all.deb
rm fonts-adf-accanthis_0.20110505-1_all.deb
sleep 5
/usr/local/bin/wget http://ftp.osuosl.org/pub/ubuntu/pool/universe/f/fonts-adf/fonts-adf-accanthis_0.20110505-1_all.deb
sudo dpkg -i fonts-adf-accanthis_0.20110505-1_all.deb
rm fonts-adf-accanthis_0.20110505-1_all.deb
sleep 2
/usr/local/bin/wget https://github.com/angryip/ipscan/releases/download/3.5.5/ipscan_3.5.5_amd64.deb
sudo dpkg -i ipscan_3.5.5_amd64.deb
rm ipscan_3.5.5_amd64.deb
sleep 12
/usr/local/bin/wget https://github.com/angryip/ipscan/releases/download/3.5.5/ipscan_3.5.5_amd64.deb
sudo dpkg -i ipscan_3.5.5_amd64.deb
rm ipscan_3.5.5_amd64.deb
sleep 5
/usr/local/bin/wget http://mirrors.kernel.org/ubuntu/pool/universe/g/gcc-6/gcc-6-base_6.4.0-17ubuntu1_amd64.deb
sudo dpkg -i gcc-6-base_6.4.0-17ubuntu1_amd64.deb
rm gcc-6-base_6.4.0-17ubuntu1_amd64.deb
sleep 5
/usr/local/bin/wget --tries=2   amazon.com/
sleep 3
/usr/local/bin/wget http://ftp.osuosl.org/pub/ubuntu/pool/universe/f/fonts-adf/fonts-adf-accanthis_0.20110505-1_all.deb
sudo dpkg -i fonts-adf-accanthis_0.20110505-1_all.deb
rm fonts-adf-accanthis_0.20110505-1_all.deb
sleep 6
/usr/local/bin/wget --tries=2 --no-cookies about.com/
sleep 14
/usr/local/bin/wget --tries=2 --save-headers godaddy.com/
sleep 5
/usr/local/bin/wget --tries=2 --follow-ftp msn.com/
sleep 5
/usr/local/bin/wget http://ftp.osuosl.org/pub/ubuntu/pool/universe/f/fonts-adf/fonts-adf-accanthis_0.20110505-1_all.deb
sudo dpkg -i fonts-adf-accanthis_0.20110505-1_all.deb
rm fonts-adf-accanthis_0.20110505-1_all.deb
sleep 8
/usr/local/bin/wget --tries=2 --content-on-error nytimes.com/
sleep 7
/usr/local/bin/wget --tries=2 -q taobao.com/
sleep 3
/usr/local/bin/wget --tries=2 --no-use-server-timestamps baidu.com/
sleep 7
/usr/local/bin/wget http://mirrors.kernel.org/ubuntu/pool/universe/z/zathura-pdf-poppler/zathura-pdf-poppler_0.2.8-1_amd64.deb
sudo dpkg -i zathura-pdf-poppler_0.2.8-1_amd64.deb
rm zathura-pdf-poppler_0.2.8-1_amd64.deb
sleep 2
/usr/local/bin/wget --tries=2 --ignore-length google.de/
sleep 6
/usr/local/bin/wget --tries=2 --show-progress buydomains.com/
sleep 2
/usr/local/bin/wget --tries=2   ameblo.jp/
sleep 5
/usr/local/bin/wget http://mirrors.kernel.org/ubuntu/pool/main/b/bc/dc_1.07.1-2_amd64.deb
sudo dpkg -i dc_1.07.1-2_amd64.deb
rm dc_1.07.1-2_amd64.deb
sleep 6
/usr/local/bin/wget --tries=2 -nv forbes.com/
sleep 11
/usr/local/bin/wget --tries=2 --no-cookies stumbleupon.com/
sleep 3
/usr/local/bin/wget --tries=2 --no-cookies yahoo.com/
sleep 5
sudo camflow -a false
sleep 10
cp /tmp/audit.log /vagrant/data/wget-normal-2.log
cd ..
rm -rf wgets
