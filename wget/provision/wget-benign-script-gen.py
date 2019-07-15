print """
+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+
This python file generates wget files for normally-behaved wget training data generation.    			+
Each file should have 1 wget operations with random addresses. 											+
To mimic exploit pattern, several files have -N flag and same address.  								+
+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+
"""
from helper.gen import *

# List of most popular websites
urls = read_urls("top100.csv")
packages = read_urls("debian.csv")
# 125 wget files with various flags and different websites and packages installation
for i in range(125):
	filename = "benign/wget-" + str(i) + ".sh"
	output = open(filename, 'wb')
	output.write("#!/bin/bash\n")
	output.write("sudo systemctl stop firewalld\n")
	# output.write("su\n")
	# output.write("cd /root/\n")
	output.write("mkdir wgets\n")
	output.write("cd wgets\n")
	# output.write("rm -f index.html.*\n")
	# output.write("rm -f index.html\n")
	output.write("camflow -a true\n")

	wait_time = poisson_distributed_wait_time(5, 30)
	for n in range(30):
		install_package = coin_flip(0.5)	# Whether to install Debian package or other wget activities.
		if install_package:
			url = random_url(packages)
			wget_str = "/usr/local/bin/wget " + url + "\n"
			output.write(wget_str)
			deb_name = get_deb_name(url)
			install_str = "sudo dpkg -i " + deb_name + "\n"
			output.write(install_str)
			rm_str = "rm " + deb_name + "\n"
			output.write(rm_str)
		else:
			url = random_url(urls)
			flag = random_flag()
			wget_str = "/usr/local/bin/wget --tries=2 " + flag + " " + url + "\n"
			output.write(wget_str)
		
		wait_str = "sleep " + str(wait_time[n]) + "\n"
		output.write(wait_str)

	output.write("sudo camflow -a false\n")
	# output.write("sudo camflow -e false\n")
	output.write("sleep 10\n")
	copy_data = "cp /tmp/audit.log /vagrant/data/wget-normal-" + str(i) + ".log\n"
	output.write(copy_data)
	output.write("cd ..\n")
	output.write("rm -rf wgets\n")
	output.close()
