#!/bin/bash
sudo systemctl stop firewalld
mkdir wgets
cd wgets
camflow -a true
/usr/local/bin/wget http://mirrors.kernel.org/ubuntu/pool/main/b/bc/dc_1.07.1-2_amd64.deb
sudo dpkg -i dc_1.07.1-2_amd64.deb
rm dc_1.07.1-2_amd64.deb
sleep 4
/usr/local/bin/wget http://ftp.osuosl.org/pub/ubuntu/pool/universe/f/fonts-adf/fonts-adf-accanthis_0.20110505-1_all.deb
sudo dpkg -i fonts-adf-accanthis_0.20110505-1_all.deb
rm fonts-adf-accanthis_0.20110505-1_all.deb
sleep 6
/usr/local/bin/wget --tries=2 --no-use-server-timestamps washingtonpost.com/
sleep 7
/usr/local/bin/wget --tries=2 --auth-no-challenge mail.ru/
sleep 4
/usr/local/bin/wget --tries=2   telegraph.co.uk/
sleep 3
/usr/local/bin/wget --tries=2 --no-check-certificate theguardian.com/
sleep 2
/usr/local/bin/wget --tries=2 -N vk.com/
sleep 3
/usr/local/bin/wget --tries=2 --no-cookies e-recht24.de/
sleep 4
/usr/local/bin/wget --tries=2 --strict-comments amazonaws.com/
sleep 4
/usr/local/bin/wget http://mirrors.kernel.org/ubuntu/pool/main/b/bc/dc_1.07.1-2_amd64.deb
sudo dpkg -i dc_1.07.1-2_amd64.deb
rm dc_1.07.1-2_amd64.deb
sleep 6
/usr/local/bin/wget --tries=2 -o /dev/null qq.com/
sleep 5
/usr/local/bin/wget http://mirrors.kernel.org/ubuntu/pool/main/b/bc/dc_1.07.1-2_amd64.deb
sudo dpkg -i dc_1.07.1-2_amd64.deb
rm dc_1.07.1-2_amd64.deb
sleep 5
/usr/local/bin/wget --tries=2 -N archive.org/
sleep 7
/usr/local/bin/wget http://ftp.osuosl.org/pub/ubuntu/pool/universe/f/fonts-adf/fonts-adf-accanthis_0.20110505-1_all.deb
sudo dpkg -i fonts-adf-accanthis_0.20110505-1_all.deb
rm fonts-adf-accanthis_0.20110505-1_all.deb
sleep 3
/usr/local/bin/wget --tries=2 --no-check-certificate feedburner.com/
sleep 5
/usr/local/bin/wget http://mirrors.kernel.org/ubuntu/pool/main/b/bc/dc_1.07.1-2_amd64.deb
sudo dpkg -i dc_1.07.1-2_amd64.deb
rm dc_1.07.1-2_amd64.deb
sleep 6
/usr/local/bin/wget --tries=2 -V youtube.com/
sleep 5
/usr/local/bin/wget https://github.com/angryip/ipscan/releases/download/3.5.5/ipscan_3.5.5_amd64.deb
sudo dpkg -i ipscan_3.5.5_amd64.deb
rm ipscan_3.5.5_amd64.deb
sleep 4
/usr/local/bin/wget --tries=2 --no-dns-cache weebly.com/
sleep 5
/usr/local/bin/wget --tries=2 --content-on-error 51.la/
sleep 4
/usr/local/bin/wget --tries=2   telegraph.co.uk/
sleep 2
/usr/local/bin/wget --tries=2 --save-headers about.com/
sleep 6
/usr/local/bin/wget http://mirrors.kernel.org/ubuntu/pool/universe/z/zathura-pdf-poppler/zathura-pdf-poppler_0.2.8-1_amd64.deb
sudo dpkg -i zathura-pdf-poppler_0.2.8-1_amd64.deb
rm zathura-pdf-poppler_0.2.8-1_amd64.deb
sleep 7
/usr/local/bin/wget --tries=2 --no-cookies ascii.co.uk/
sleep 5
/usr/local/bin/wget --tries=2 -o /dev/null forbes.com/
sleep 4
/usr/local/bin/wget http://mirrors.kernel.org/ubuntu/pool/main/b/bc/dc_1.07.1-2_amd64.deb
sudo dpkg -i dc_1.07.1-2_amd64.deb
rm dc_1.07.1-2_amd64.deb
sleep 4
/usr/local/bin/wget http://mirrors.kernel.org/ubuntu/pool/universe/g/gcc-6/gcc-6-base_6.4.0-17ubuntu1_amd64.deb
sudo dpkg -i gcc-6-base_6.4.0-17ubuntu1_amd64.deb
rm gcc-6-base_6.4.0-17ubuntu1_amd64.deb
sleep 5
/usr/local/bin/wget http://mirrors.kernel.org/ubuntu/pool/universe/g/gcc-6/gcc-6-base_6.4.0-17ubuntu1_amd64.deb
sudo dpkg -i gcc-6-base_6.4.0-17ubuntu1_amd64.deb
rm gcc-6-base_6.4.0-17ubuntu1_amd64.deb
sleep 10
/usr/local/bin/wget --tries=2 --no-check-certificate wikipedia.org/
sleep 6
/usr/local/bin/wget --tries=2 --no-cookies whoisprivacyprotect.com/
sleep 7
sudo camflow -a false
sleep 10
cp /tmp/audit.log /vagrant/data/wget-normal-83.log
cd ..
rm -rf wgets
