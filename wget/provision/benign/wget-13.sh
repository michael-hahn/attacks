#!/bin/bash
sudo systemctl stop firewalld
mkdir wgets
cd wgets
camflow -a true
/usr/local/bin/wget --tries=2 --no-cookies twitter.com/
sleep 6
/usr/local/bin/wget --tries=2 --follow-ftp buydomains.com/
sleep 4
/usr/local/bin/wget --tries=2 -o /dev/null taobao.com/
sleep 4
/usr/local/bin/wget --tries=2 --keep-session-cookies wixsite.com/
sleep 6
/usr/local/bin/wget http://mirrors.kernel.org/ubuntu/pool/main/b/bc/dc_1.07.1-2_amd64.deb
sudo dpkg -i dc_1.07.1-2_amd64.deb
rm dc_1.07.1-2_amd64.deb
sleep 4
/usr/local/bin/wget --tries=2   google.com/
sleep 3
/usr/local/bin/wget --tries=2 --follow-ftp facebook.com/
sleep 2
/usr/local/bin/wget http://mirrors.kernel.org/ubuntu/pool/main/b/bc/dc_1.07.1-2_amd64.deb
sudo dpkg -i dc_1.07.1-2_amd64.deb
rm dc_1.07.1-2_amd64.deb
sleep 10
/usr/local/bin/wget --tries=2 --show-progress blogger.com/
sleep 4
/usr/local/bin/wget --tries=2 -N ovh.net/
sleep 2
/usr/local/bin/wget http://mirrors.kernel.org/ubuntu/pool/universe/g/gcc-6/gcc-6-base_6.4.0-17ubuntu1_amd64.deb
sudo dpkg -i gcc-6-base_6.4.0-17ubuntu1_amd64.deb
rm gcc-6-base_6.4.0-17ubuntu1_amd64.deb
sleep 5
/usr/local/bin/wget --tries=2 -N stumbleupon.com/
sleep 7
/usr/local/bin/wget http://mirrors.kernel.org/ubuntu/pool/main/b/bc/dc_1.07.1-2_amd64.deb
sudo dpkg -i dc_1.07.1-2_amd64.deb
rm dc_1.07.1-2_amd64.deb
sleep 4
/usr/local/bin/wget --tries=2 --strict-comments addtoany.com/
sleep 6
/usr/local/bin/wget --tries=2 -V gravatar.com/
sleep 4
/usr/local/bin/wget --tries=2 -nv slideshare.net/
sleep 4
/usr/local/bin/wget http://mirrors.kernel.org/ubuntu/pool/main/b/bc/dc_1.07.1-2_amd64.deb
sudo dpkg -i dc_1.07.1-2_amd64.deb
rm dc_1.07.1-2_amd64.deb
sleep 4
/usr/local/bin/wget --tries=2 --ignore-length e-recht24.de/
sleep 3
/usr/local/bin/wget http://ftp.osuosl.org/pub/ubuntu/pool/universe/f/fonts-adf/fonts-adf-accanthis_0.20110505-1_all.deb
sudo dpkg -i fonts-adf-accanthis_0.20110505-1_all.deb
rm fonts-adf-accanthis_0.20110505-1_all.deb
sleep 4
/usr/local/bin/wget --tries=2 --no-check-certificate forbes.com/
sleep 2
/usr/local/bin/wget http://mirrors.kernel.org/ubuntu/pool/universe/g/gcc-6/gcc-6-base_6.4.0-17ubuntu1_amd64.deb
sudo dpkg -i gcc-6-base_6.4.0-17ubuntu1_amd64.deb
rm gcc-6-base_6.4.0-17ubuntu1_amd64.deb
sleep 4
/usr/local/bin/wget --tries=2 --ignore-length about.com/
sleep 12
/usr/local/bin/wget --tries=2 --ignore-length cnn.com/
sleep 1
/usr/local/bin/wget --tries=2 -o /dev/null huffingtonpost.com/
sleep 9
/usr/local/bin/wget --tries=2 --no-use-server-timestamps ebay.com/
sleep 6
/usr/local/bin/wget http://mirrors.kernel.org/ubuntu/pool/universe/s/sx/sx_2.0+ds-4build2_amd64.deb
sudo dpkg -i sx_2.0+ds-4build2_amd64.deb
rm sx_2.0+ds-4build2_amd64.deb
sleep 1
/usr/local/bin/wget https://github.com/angryip/ipscan/releases/download/3.5.5/ipscan_3.5.5_amd64.deb
sudo dpkg -i ipscan_3.5.5_amd64.deb
rm ipscan_3.5.5_amd64.deb
sleep 3
/usr/local/bin/wget http://mirrors.kernel.org/ubuntu/pool/universe/s/sx/sx_2.0+ds-4build2_amd64.deb
sudo dpkg -i sx_2.0+ds-4build2_amd64.deb
rm sx_2.0+ds-4build2_amd64.deb
sleep 6
/usr/local/bin/wget --tries=2 --keep-session-cookies nih.gov/
sleep 5
/usr/local/bin/wget --tries=2 -nv miibeian.gov.cn/
sleep 3
sudo camflow -a false
sleep 10
cp /tmp/audit.log /vagrant/data/wget-normal-13.log
cd ..
rm -rf wgets
