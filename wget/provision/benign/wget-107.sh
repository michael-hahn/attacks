#!/bin/bash
sudo systemctl stop firewalld
mkdir wgets
cd wgets
camflow -a true
/usr/local/bin/wget --tries=2 --no-use-server-timestamps blogger.com/
sleep 3
/usr/local/bin/wget --tries=2 --strict-comments etsy.com/
sleep 2
/usr/local/bin/wget http://mirrors.kernel.org/ubuntu/pool/universe/g/gcc-6/gcc-6-base_6.4.0-17ubuntu1_amd64.deb
sudo dpkg -i gcc-6-base_6.4.0-17ubuntu1_amd64.deb
rm gcc-6-base_6.4.0-17ubuntu1_amd64.deb
sleep 4
/usr/local/bin/wget --tries=2 --auth-no-challenge wordpress.org/
sleep 10
/usr/local/bin/wget --tries=2 --ignore-length amazonaws.com/
sleep 5
/usr/local/bin/wget --tries=2 --auth-no-challenge blogger.com/
sleep 5
/usr/local/bin/wget --tries=2 --no-use-server-timestamps ascii.co.uk/
sleep 4
/usr/local/bin/wget --tries=2 --no-use-server-timestamps weibo.com/
sleep 9
/usr/local/bin/wget http://ftp.osuosl.org/pub/ubuntu/pool/universe/f/fonts-adf/fonts-adf-accanthis_0.20110505-1_all.deb
sudo dpkg -i fonts-adf-accanthis_0.20110505-1_all.deb
rm fonts-adf-accanthis_0.20110505-1_all.deb
sleep 1
/usr/local/bin/wget http://ftp.osuosl.org/pub/ubuntu/pool/universe/f/fonts-adf/fonts-adf-accanthis_0.20110505-1_all.deb
sudo dpkg -i fonts-adf-accanthis_0.20110505-1_all.deb
rm fonts-adf-accanthis_0.20110505-1_all.deb
sleep 4
/usr/local/bin/wget --tries=2 --strict-comments gravatar.com/
sleep 3
/usr/local/bin/wget --tries=2 -o /dev/null ascii.co.uk/
sleep 4
/usr/local/bin/wget --tries=2 -N sourceforge.net/
sleep 4
/usr/local/bin/wget --tries=2 -o /dev/null microsoft.com/
sleep 5
/usr/local/bin/wget --tries=2 -nv myspace.com/
sleep 6
/usr/local/bin/wget https://github.com/angryip/ipscan/releases/download/3.5.5/ipscan_3.5.5_amd64.deb
sudo dpkg -i ipscan_3.5.5_amd64.deb
rm ipscan_3.5.5_amd64.deb
sleep 5
/usr/local/bin/wget --tries=2 --ignore-length taobao.com/
sleep 5
/usr/local/bin/wget --tries=2 --no-cookies google.co.jp/
sleep 2
/usr/local/bin/wget --tries=2 --show-progress feedburner.com/
sleep 6
/usr/local/bin/wget http://mirrors.kernel.org/ubuntu/pool/main/b/bc/dc_1.07.1-2_amd64.deb
sudo dpkg -i dc_1.07.1-2_amd64.deb
rm dc_1.07.1-2_amd64.deb
sleep 2
/usr/local/bin/wget --tries=2 --no-use-server-timestamps sourceforge.net/
sleep 2
/usr/local/bin/wget --tries=2 --content-on-error facebook.com/
sleep 8
/usr/local/bin/wget --tries=2 --keep-session-cookies blogger.com/
sleep 3
/usr/local/bin/wget http://mirrors.kernel.org/ubuntu/pool/universe/z/zathura-pdf-poppler/zathura-pdf-poppler_0.2.8-1_amd64.deb
sudo dpkg -i zathura-pdf-poppler_0.2.8-1_amd64.deb
rm zathura-pdf-poppler_0.2.8-1_amd64.deb
sleep 7
/usr/local/bin/wget https://github.com/angryip/ipscan/releases/download/3.5.5/ipscan_3.5.5_amd64.deb
sudo dpkg -i ipscan_3.5.5_amd64.deb
rm ipscan_3.5.5_amd64.deb
sleep 2
/usr/local/bin/wget http://mirrors.kernel.org/ubuntu/pool/universe/g/gcc-6/gcc-6-base_6.4.0-17ubuntu1_amd64.deb
sudo dpkg -i gcc-6-base_6.4.0-17ubuntu1_amd64.deb
rm gcc-6-base_6.4.0-17ubuntu1_amd64.deb
sleep 2
/usr/local/bin/wget --tries=2   blogspot.com/
sleep 5
/usr/local/bin/wget --tries=2 -v paypal.com/
sleep 2
/usr/local/bin/wget http://mirrors.kernel.org/ubuntu/pool/main/b/bc/dc_1.07.1-2_amd64.deb
sudo dpkg -i dc_1.07.1-2_amd64.deb
rm dc_1.07.1-2_amd64.deb
sleep 7
/usr/local/bin/wget --tries=2 --strict-comments blogspot.com/
sleep 5
sudo camflow -a false
sleep 10
cp /tmp/audit.log /vagrant/data/wget-normal-107.log
cd ..
rm -rf wgets
