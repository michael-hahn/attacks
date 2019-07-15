#!/bin/bash
sudo systemctl stop firewalld
mkdir wgets
cd wgets
camflow -a true
/usr/local/bin/wget --tries=2 --keep-session-cookies sourceforge.net/
sleep 6
/usr/local/bin/wget http://ftp.osuosl.org/pub/ubuntu/pool/universe/f/fonts-adf/fonts-adf-accanthis_0.20110505-1_all.deb
sudo dpkg -i fonts-adf-accanthis_0.20110505-1_all.deb
rm fonts-adf-accanthis_0.20110505-1_all.deb
sleep 1
/usr/local/bin/wget --tries=2 -o /dev/null forbes.com/
sleep 5
/usr/local/bin/wget --tries=2 --content-on-error dailymail.co.uk/
sleep 4
/usr/local/bin/wget --tries=2 --strict-comments cnn.com/
sleep 3
/usr/local/bin/wget --tries=2 -v facebook.com/
sleep 5
/usr/local/bin/wget --tries=2 --ignore-length flickr.com/
sleep 7
/usr/local/bin/wget --tries=2 --ignore-length mozilla.org/
sleep 8
/usr/local/bin/wget http://mirrors.kernel.org/ubuntu/pool/universe/z/zathura-pdf-poppler/zathura-pdf-poppler_0.2.8-1_amd64.deb
sudo dpkg -i zathura-pdf-poppler_0.2.8-1_amd64.deb
rm zathura-pdf-poppler_0.2.8-1_amd64.deb
sleep 8
/usr/local/bin/wget http://mirrors.kernel.org/ubuntu/pool/universe/s/sx/sx_2.0+ds-4build2_amd64.deb
sudo dpkg -i sx_2.0+ds-4build2_amd64.deb
rm sx_2.0+ds-4build2_amd64.deb
sleep 7
/usr/local/bin/wget --tries=2 --ignore-length google.co.uk/
sleep 8
/usr/local/bin/wget http://ftp.osuosl.org/pub/ubuntu/pool/universe/f/fonts-adf/fonts-adf-accanthis_0.20110505-1_all.deb
sudo dpkg -i fonts-adf-accanthis_0.20110505-1_all.deb
rm fonts-adf-accanthis_0.20110505-1_all.deb
sleep 4
/usr/local/bin/wget --tries=2 --no-check-certificate miitbeian.gov.cn/
sleep 5
/usr/local/bin/wget --tries=2 --show-progress yandex.ru/
sleep 3
/usr/local/bin/wget --tries=2 --show-progress 51.la/
sleep 6
/usr/local/bin/wget --tries=2 --strict-comments flickr.com/
sleep 4
/usr/local/bin/wget --tries=2   soundcloud.com/
sleep 5
/usr/local/bin/wget --tries=2 --no-cookies ascii.co.uk/
sleep 2
/usr/local/bin/wget --tries=2 --content-on-error stumbleupon.com/
sleep 1
/usr/local/bin/wget http://mirrors.kernel.org/ubuntu/pool/universe/s/sx/sx_2.0+ds-4build2_amd64.deb
sudo dpkg -i sx_2.0+ds-4build2_amd64.deb
rm sx_2.0+ds-4build2_amd64.deb
sleep 1
/usr/local/bin/wget http://mirrors.kernel.org/ubuntu/pool/universe/s/sx/sx_2.0+ds-4build2_amd64.deb
sudo dpkg -i sx_2.0+ds-4build2_amd64.deb
rm sx_2.0+ds-4build2_amd64.deb
sleep 2
/usr/local/bin/wget --tries=2 --strict-comments google.co.uk/
sleep 4
/usr/local/bin/wget http://ftp.osuosl.org/pub/ubuntu/pool/universe/f/fonts-adf/fonts-adf-accanthis_0.20110505-1_all.deb
sudo dpkg -i fonts-adf-accanthis_0.20110505-1_all.deb
rm fonts-adf-accanthis_0.20110505-1_all.deb
sleep 9
/usr/local/bin/wget --tries=2   gravatar.com/
sleep 8
/usr/local/bin/wget --tries=2 --follow-ftp cloudflare.com/
sleep 3
/usr/local/bin/wget --tries=2 -q theguardian.com/
sleep 1
/usr/local/bin/wget http://ftp.osuosl.org/pub/ubuntu/pool/universe/f/fonts-adf/fonts-adf-accanthis_0.20110505-1_all.deb
sudo dpkg -i fonts-adf-accanthis_0.20110505-1_all.deb
rm fonts-adf-accanthis_0.20110505-1_all.deb
sleep 4
/usr/local/bin/wget https://github.com/angryip/ipscan/releases/download/3.5.5/ipscan_3.5.5_amd64.deb
sudo dpkg -i ipscan_3.5.5_amd64.deb
rm ipscan_3.5.5_amd64.deb
sleep 3
/usr/local/bin/wget --tries=2 --save-headers bing.com/
sleep 6
/usr/local/bin/wget https://github.com/angryip/ipscan/releases/download/3.5.5/ipscan_3.5.5_amd64.deb
sudo dpkg -i ipscan_3.5.5_amd64.deb
rm ipscan_3.5.5_amd64.deb
sleep 6
sudo camflow -a false
sleep 10
cp /tmp/audit.log /vagrant/data/wget-normal-30.log
cd ..
rm -rf wgets
