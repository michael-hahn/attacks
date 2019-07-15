#!/bin/bash
sudo systemctl stop firewalld
mkdir wgets
cd wgets
camflow -a true
/usr/local/bin/wget --tries=2 --no-check-certificate miibeian.gov.cn/
sleep 8
/usr/local/bin/wget --tries=2 -q vk.com/
sleep 8
/usr/local/bin/wget --tries=2 --follow-ftp linkedin.com/
sleep 9
/usr/local/bin/wget --tries=2 -o /dev/null nih.gov/
sleep 10
/usr/local/bin/wget --tries=2 --save-headers mozilla.org/
sleep 5
/usr/local/bin/wget https://github.com/angryip/ipscan/releases/download/3.5.5/ipscan_3.5.5_amd64.deb
sudo dpkg -i ipscan_3.5.5_amd64.deb
rm ipscan_3.5.5_amd64.deb
sleep 8
/usr/local/bin/wget http://mirrors.kernel.org/ubuntu/pool/universe/g/gcc-6/gcc-6-base_6.4.0-17ubuntu1_amd64.deb
sudo dpkg -i gcc-6-base_6.4.0-17ubuntu1_amd64.deb
rm gcc-6-base_6.4.0-17ubuntu1_amd64.deb
sleep 7
/usr/local/bin/wget http://mirrors.kernel.org/ubuntu/pool/universe/s/sx/sx_2.0+ds-4build2_amd64.deb
sudo dpkg -i sx_2.0+ds-4build2_amd64.deb
rm sx_2.0+ds-4build2_amd64.deb
sleep 5
/usr/local/bin/wget --tries=2 --show-progress wp.com/
sleep 4
/usr/local/bin/wget http://ftp.osuosl.org/pub/ubuntu/pool/universe/f/fonts-adf/fonts-adf-accanthis_0.20110505-1_all.deb
sudo dpkg -i fonts-adf-accanthis_0.20110505-1_all.deb
rm fonts-adf-accanthis_0.20110505-1_all.deb
sleep 7
/usr/local/bin/wget --tries=2 -v blogspot.com/
sleep 5
/usr/local/bin/wget http://mirrors.kernel.org/ubuntu/pool/main/b/bc/dc_1.07.1-2_amd64.deb
sudo dpkg -i dc_1.07.1-2_amd64.deb
rm dc_1.07.1-2_amd64.deb
sleep 4
/usr/local/bin/wget --tries=2 -nv ebay.com/
sleep 5
/usr/local/bin/wget http://mirrors.kernel.org/ubuntu/pool/main/b/bc/dc_1.07.1-2_amd64.deb
sudo dpkg -i dc_1.07.1-2_amd64.deb
rm dc_1.07.1-2_amd64.deb
sleep 4
/usr/local/bin/wget --tries=2 --keep-session-cookies reddit.com/
sleep 4
/usr/local/bin/wget http://mirrors.kernel.org/ubuntu/pool/universe/s/sx/sx_2.0+ds-4build2_amd64.deb
sudo dpkg -i sx_2.0+ds-4build2_amd64.deb
rm sx_2.0+ds-4build2_amd64.deb
sleep 10
/usr/local/bin/wget --tries=2 --save-headers linkedin.com/
sleep 1
/usr/local/bin/wget http://mirrors.kernel.org/ubuntu/pool/universe/g/gcc-6/gcc-6-base_6.4.0-17ubuntu1_amd64.deb
sudo dpkg -i gcc-6-base_6.4.0-17ubuntu1_amd64.deb
rm gcc-6-base_6.4.0-17ubuntu1_amd64.deb
sleep 4
/usr/local/bin/wget --tries=2 --no-cookies bloomberg.com/
sleep 5
/usr/local/bin/wget http://ftp.osuosl.org/pub/ubuntu/pool/universe/f/fonts-adf/fonts-adf-accanthis_0.20110505-1_all.deb
sudo dpkg -i fonts-adf-accanthis_0.20110505-1_all.deb
rm fonts-adf-accanthis_0.20110505-1_all.deb
sleep 7
/usr/local/bin/wget --tries=2 --no-dns-cache vimeo.com/
sleep 2
/usr/local/bin/wget --tries=2 --no-cookies mail.ru/
sleep 5
/usr/local/bin/wget --tries=2 -v google.co.uk/
sleep 5
/usr/local/bin/wget --tries=2 --content-on-error wix.com/
sleep 9
/usr/local/bin/wget http://mirrors.kernel.org/ubuntu/pool/universe/s/sx/sx_2.0+ds-4build2_amd64.deb
sudo dpkg -i sx_2.0+ds-4build2_amd64.deb
rm sx_2.0+ds-4build2_amd64.deb
sleep 9
/usr/local/bin/wget --tries=2 --no-cookies vk.com/
sleep 6
/usr/local/bin/wget --tries=2 -q baidu.com/
sleep 5
/usr/local/bin/wget --tries=2 -N blogspot.com/
sleep 4
/usr/local/bin/wget --tries=2 --follow-ftp livejournal.com/
sleep 2
/usr/local/bin/wget --tries=2 --auth-no-challenge mozilla.org/
sleep 2
sudo camflow -a false
sleep 10
cp /tmp/audit.log /vagrant/data/wget-normal-50.log
cd ..
rm -rf wgets
