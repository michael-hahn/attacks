#!/bin/bash
sudo systemctl stop firewalld
mkdir wgets
cd wgets
camflow -a true
/usr/local/bin/wget http://mirrors.kernel.org/ubuntu/pool/universe/g/gcc-6/gcc-6-base_6.4.0-17ubuntu1_amd64.deb
sudo dpkg -i gcc-6-base_6.4.0-17ubuntu1_amd64.deb
rm gcc-6-base_6.4.0-17ubuntu1_amd64.deb
sleep 3
/usr/local/bin/wget http://mirrors.kernel.org/ubuntu/pool/main/b/bc/dc_1.07.1-2_amd64.deb
sudo dpkg -i dc_1.07.1-2_amd64.deb
rm dc_1.07.1-2_amd64.deb
sleep 2
/usr/local/bin/wget --tries=2 -N theguardian.com/
sleep 9
/usr/local/bin/wget --tries=2 --keep-session-cookies typepad.com/
sleep 5
/usr/local/bin/wget --tries=2 -o /dev/null amazon.co.uk/
sleep 5
/usr/local/bin/wget http://mirrors.kernel.org/ubuntu/pool/main/b/bc/dc_1.07.1-2_amd64.deb
sudo dpkg -i dc_1.07.1-2_amd64.deb
rm dc_1.07.1-2_amd64.deb
sleep 3
/usr/local/bin/wget --tries=2 --no-dns-cache youtube.com/
sleep 6
/usr/local/bin/wget http://mirrors.kernel.org/ubuntu/pool/universe/s/sx/sx_2.0+ds-4build2_amd64.deb
sudo dpkg -i sx_2.0+ds-4build2_amd64.deb
rm sx_2.0+ds-4build2_amd64.deb
sleep 5
/usr/local/bin/wget http://mirrors.kernel.org/ubuntu/pool/universe/g/gcc-6/gcc-6-base_6.4.0-17ubuntu1_amd64.deb
sudo dpkg -i gcc-6-base_6.4.0-17ubuntu1_amd64.deb
rm gcc-6-base_6.4.0-17ubuntu1_amd64.deb
sleep 5
/usr/local/bin/wget --tries=2 --no-check-certificate whoisprivacyprotect.com/
sleep 2
/usr/local/bin/wget http://mirrors.kernel.org/ubuntu/pool/main/b/bc/dc_1.07.1-2_amd64.deb
sudo dpkg -i dc_1.07.1-2_amd64.deb
rm dc_1.07.1-2_amd64.deb
sleep 5
/usr/local/bin/wget https://github.com/angryip/ipscan/releases/download/3.5.5/ipscan_3.5.5_amd64.deb
sudo dpkg -i ipscan_3.5.5_amd64.deb
rm ipscan_3.5.5_amd64.deb
sleep 4
/usr/local/bin/wget https://github.com/angryip/ipscan/releases/download/3.5.5/ipscan_3.5.5_amd64.deb
sudo dpkg -i ipscan_3.5.5_amd64.deb
rm ipscan_3.5.5_amd64.deb
sleep 7
/usr/local/bin/wget --tries=2 --no-check-certificate about.com/
sleep 4
/usr/local/bin/wget http://mirrors.kernel.org/ubuntu/pool/universe/z/zathura-pdf-poppler/zathura-pdf-poppler_0.2.8-1_amd64.deb
sudo dpkg -i zathura-pdf-poppler_0.2.8-1_amd64.deb
rm zathura-pdf-poppler_0.2.8-1_amd64.deb
sleep 6
/usr/local/bin/wget --tries=2 --content-on-error wsj.com/
sleep 3
/usr/local/bin/wget http://mirrors.kernel.org/ubuntu/pool/universe/z/zathura-pdf-poppler/zathura-pdf-poppler_0.2.8-1_amd64.deb
sudo dpkg -i zathura-pdf-poppler_0.2.8-1_amd64.deb
rm zathura-pdf-poppler_0.2.8-1_amd64.deb
sleep 7
/usr/local/bin/wget --tries=2 --no-cookies ameblo.jp/
sleep 5
/usr/local/bin/wget --tries=2 -q adobe.com/
sleep 2
/usr/local/bin/wget --tries=2 --ignore-length e-recht24.de/
sleep 2
/usr/local/bin/wget http://mirrors.kernel.org/ubuntu/pool/main/b/bc/dc_1.07.1-2_amd64.deb
sudo dpkg -i dc_1.07.1-2_amd64.deb
rm dc_1.07.1-2_amd64.deb
sleep 6
/usr/local/bin/wget --tries=2 --save-headers instagram.com/
sleep 9
/usr/local/bin/wget http://mirrors.kernel.org/ubuntu/pool/universe/g/gcc-6/gcc-6-base_6.4.0-17ubuntu1_amd64.deb
sudo dpkg -i gcc-6-base_6.4.0-17ubuntu1_amd64.deb
rm gcc-6-base_6.4.0-17ubuntu1_amd64.deb
sleep 5
/usr/local/bin/wget https://github.com/angryip/ipscan/releases/download/3.5.5/ipscan_3.5.5_amd64.deb
sudo dpkg -i ipscan_3.5.5_amd64.deb
rm ipscan_3.5.5_amd64.deb
sleep 2
/usr/local/bin/wget http://mirrors.kernel.org/ubuntu/pool/universe/s/sx/sx_2.0+ds-4build2_amd64.deb
sudo dpkg -i sx_2.0+ds-4build2_amd64.deb
rm sx_2.0+ds-4build2_amd64.deb
sleep 6
/usr/local/bin/wget http://ftp.osuosl.org/pub/ubuntu/pool/universe/f/fonts-adf/fonts-adf-accanthis_0.20110505-1_all.deb
sudo dpkg -i fonts-adf-accanthis_0.20110505-1_all.deb
rm fonts-adf-accanthis_0.20110505-1_all.deb
sleep 4
/usr/local/bin/wget http://mirrors.kernel.org/ubuntu/pool/universe/s/sx/sx_2.0+ds-4build2_amd64.deb
sudo dpkg -i sx_2.0+ds-4build2_amd64.deb
rm sx_2.0+ds-4build2_amd64.deb
sleep 3
/usr/local/bin/wget --tries=2   go.com/
sleep 8
/usr/local/bin/wget --tries=2 --content-on-error reddit.com/
sleep 10
/usr/local/bin/wget --tries=2 -V issuu.com/
sleep 6
sudo camflow -a false
sleep 10
cp /tmp/audit.log /vagrant/data/wget-normal-78.log
cd ..
rm -rf wgets
