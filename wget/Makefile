train_mac:
	cnt=0; while [ $${cnt} -lt 125 ] ; do \
		sed -i '' "s,provision/attack/wget-exploit-[0-9]*.sh,provision/benign/wget-$${cnt}.sh," Vagrantfile ; \
		sed -i '' "s,provision/benign/wget-[0-9]*.sh,provision/benign/wget-$${cnt}.sh," Vagrantfile ; \
		vagrant up client --provision ; \
		vagrant destroy client -f ; \
		cnt=`expr $$cnt + 1` ; \
	done ; \

test_mac:
	cnt=0; while [ $${cnt} -lt 25 ] ; do \
		sed -i '' "s,provision/benign/wget-[0-9]*.sh,provision/attack/wget-exploit-$${cnt}.sh," Vagrantfile ; \
		sed -i '' "s,provision/attack/wget-exploit-[0-9]*.sh,provision/attack/wget-exploit-$${cnt}.sh," Vagrantfile ; \
		vagrant up --provision ; \
		vagrant destroy client -f ; \
		vagrant halt -f ; \
		cnt=`expr $$cnt + 1` ; \
	done ; \

train_linux:
	cnt=0; while [ $${cnt} -lt 125 ] ; do \
		sed -i "s,provision/attack/wget-exploit-[0-9]*.sh,provision/benign/wget-$${cnt}.sh," Vagrantfile ; \
		sed -i "s,provision/benign/wget-[0-9]*.sh,provision/benign/wget-$${cnt}.sh," Vagrantfile ; \
		vagrant up client --provision ; \
		vagrant destroy client -f ; \
		cnt=`expr $$cnt + 1` ; \
	done ; \

test_linux:
	cnt=0; while [ $${cnt} -lt 25 ] ; do \
		sed -i "s,provision/benign/wget-[0-9]*.sh,provision/attack/wget-exploit-$${cnt}.sh," Vagrantfile ; \
		sed -i "s,provision/attack/wget-exploit-[0-9]*.sh,provision/attack/wget-exploit-$${cnt}.sh," Vagrantfile ; \
		vagrant up --provision ; \
		vagrant destroy client -f ; \
		vagrant halt -f ; \
		cnt=`expr $$cnt + 1` ; \
	done ; \
