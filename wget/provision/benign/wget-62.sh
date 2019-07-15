#!/bin/bash
sudo systemctl stop firewalld
mkdir wgets
cd wgets
camflow -a true
/usr/local/bin/wget --tries=2   cloudflare.com/
sleep 2
/usr/local/bin/wget --tries=2 --no-use-server-timestamps instagram.com/
sleep 7
/usr/local/bin/wget --tries=2 -V github.com/
sleep 5
/usr/local/bin/wget --tries=2 -nv sourceforge.net/
sleep 6
/usr/local/bin/wget --tries=2 -o /dev/null linkedin.com/
sleep 1
/usr/local/bin/wget --tries=2   weibo.com/
sleep 6
/usr/local/bin/wget --tries=2 --no-check-certificate tumblr.com/
sleep 3
/usr/local/bin/wget http://mirrors.kernel.org/ubuntu/pool/universe/s/sx/sx_2.0+ds-4build2_amd64.deb
sudo dpkg -i sx_2.0+ds-4build2_amd64.deb
rm sx_2.0+ds-4build2_amd64.deb
sleep 7
/usr/local/bin/wget http://mirrors.kernel.org/ubuntu/pool/universe/z/zathura-pdf-poppler/zathura-pdf-poppler_0.2.8-1_amd64.deb
sudo dpkg -i zathura-pdf-poppler_0.2.8-1_amd64.deb
rm zathura-pdf-poppler_0.2.8-1_amd64.deb
sleep 5
/usr/local/bin/wget --tries=2 --no-use-server-timestamps facebook.com/
sleep 2
/usr/local/bin/wget https://github.com/angryip/ipscan/releases/download/3.5.5/ipscan_3.5.5_amd64.deb
sudo dpkg -i ipscan_3.5.5_amd64.deb
rm ipscan_3.5.5_amd64.deb
sleep 5
/usr/local/bin/wget --tries=2 --strict-comments cnn.com/
sleep 7
/usr/local/bin/wget --tries=2 --no-use-server-timestamps linkedin.com/
sleep 8
/usr/local/bin/wget --tries=2 --content-on-error bing.com/
sleep 6
/usr/local/bin/wget --tries=2 -V digg.com/
sleep 5
/usr/local/bin/wget http://mirrors.kernel.org/ubuntu/pool/universe/z/zathura-pdf-poppler/zathura-pdf-poppler_0.2.8-1_amd64.deb
sudo dpkg -i zathura-pdf-poppler_0.2.8-1_amd64.deb
rm zathura-pdf-poppler_0.2.8-1_amd64.deb
sleep 8
/usr/local/bin/wget --tries=2 --keep-session-cookies blogspot.com/
sleep 4
/usr/local/bin/wget --tries=2 -N reddit.com/
sleep 2
/usr/local/bin/wget http://mirrors.kernel.org/ubuntu/pool/universe/s/sx/sx_2.0+ds-4build2_amd64.deb
sudo dpkg -i sx_2.0+ds-4build2_amd64.deb
rm sx_2.0+ds-4build2_amd64.deb
sleep 6
/usr/local/bin/wget --tries=2 --follow-ftp fc2.com/
sleep 4
/usr/local/bin/wget --tries=2 --show-progress issuu.com/
sleep 7
/usr/local/bin/wget --tries=2 -q facebook.com/
sleep 0
/usr/local/bin/wget http://mirrors.kernel.org/ubuntu/pool/universe/g/gcc-6/gcc-6-base_6.4.0-17ubuntu1_amd64.deb
sudo dpkg -i gcc-6-base_6.4.0-17ubuntu1_amd64.deb
rm gcc-6-base_6.4.0-17ubuntu1_amd64.deb
sleep 3
/usr/local/bin/wget http://mirrors.kernel.org/ubuntu/pool/main/b/bc/dc_1.07.1-2_amd64.deb
sudo dpkg -i dc_1.07.1-2_amd64.deb
rm dc_1.07.1-2_amd64.deb
sleep 7
/usr/local/bin/wget http://mirrors.kernel.org/ubuntu/pool/universe/z/zathura-pdf-poppler/zathura-pdf-poppler_0.2.8-1_amd64.deb
sudo dpkg -i zathura-pdf-poppler_0.2.8-1_amd64.deb
rm zathura-pdf-poppler_0.2.8-1_amd64.deb
sleep 10
/usr/local/bin/wget --tries=2 -q amazon.com/
sleep 3
/usr/local/bin/wget http://mirrors.kernel.org/ubuntu/pool/universe/z/zathura-pdf-poppler/zathura-pdf-poppler_0.2.8-1_amd64.deb
sudo dpkg -i zathura-pdf-poppler_0.2.8-1_amd64.deb
rm zathura-pdf-poppler_0.2.8-1_amd64.deb
sleep 6
/usr/local/bin/wget --tries=2 --follow-ftp 123-reg.co.uk/
sleep 6
/usr/local/bin/wget --tries=2 --keep-session-cookies 51.la/
sleep 8
/usr/local/bin/wget --tries=2 --ignore-length 123-reg.co.uk/
sleep 5
sudo camflow -a false
sleep 10
cp /tmp/audit.log /vagrant/data/wget-normal-62.log
cd ..
rm -rf wgets
