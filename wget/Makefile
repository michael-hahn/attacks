rename_raw_file_benign:
	cd 2019-04-02_16-38/ && number=0 ; while [ $$number -le 124 ] ; do \
		mv normal_camflow-$$number/camflow/output/trace.data ../camflow-normal-$$number.log ; \
		number=`expr $$number + 1` ; \
	done

rename_raw_file_attack:
	cd 2019-04-02_16-38/ && number=0 ; while [ $$number -le 24 ] ; do \
		mv attack_camflow-$$number/camflow/output/trace.data ../camflow-attack-$$number.log ; \
		number=`expr $$number + 1` ; \
	done

pack_json_benign:
	number=0 ; while [ $$number -le 120 ] ; do \
		second=`expr $$number + 1` ; \
		third=`expr $$number + 2` ; \
		fourth=`expr $$number + 3` ; \
		fifth=`expr $$number + 4` ; \
		sixth=`expr $$number + 5` ; \
		seventh=`expr $$number + 6` ; \
		eighth=`expr $$number + 7` ; \
		ninth=`expr $$number + 8` ; \
		tenth=`expr $$number + 9` ; \
		tar zcvf wget-benign-raw-$$number.gz.tar camflow-normal-$$number.log camflow-normal-$$second.log camflow-normal-$$third.log camflow-normal-$$fourth.log camflow-normal-$$fifth.log camflow-normal-$$sixth.log camflow-normal-$$seventh.log camflow-normal-$$eighth.log camflow-normal-$$ninth.log camflow-normal-$$tenth.log ; \
		number=`expr $$number + 10` ; \
	done

pack_json_attack:
	number=0 ; while [ $$number -le 20 ] ; do \
		second=`expr $$number + 1` ; \
		third=`expr $$number + 2` ; \
		fourth=`expr $$number + 3` ; \
		fifth=`expr $$number + 4` ; \
		sixth=`expr $$number + 5` ; \
		seventh=`expr $$number + 6` ; \
		eighth=`expr $$number + 7` ; \
		ninth=`expr $$number + 8` ; \
		tenth=`expr $$number + 9` ; \
		tar zcvf wget-attack-raw-$$number.gz.tar camflow-attack-$$number.log camflow-attack-$$second.log camflow-attack-$$third.log camflow-attack-$$fourth.log camflow-attack-$$fifth.log camflow-attack-$$sixth.log camflow-attack-$$seventh.log camflow-attack-$$eighth.log camflow-attack-$$ninth.log camflow-attack-$$tenth.log ; \
		number=`expr $$number + 10` ; \
	done

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
