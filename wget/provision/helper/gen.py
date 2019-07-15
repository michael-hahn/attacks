import csv
import random

from random import randint
from numpy.random import poisson

def read_urls(file_path):
	"""
	Read URLs from a csv file and save it in memory.
	"""
	data = open(file_path, 'r')
	reader = csv.DictReader(data)

	urls = []
	for row in reader:
		urls.append(row['URL'])
	data.close()
	return urls

def random_url(urls):
	"""
	Return a randomly selected URL from all URLs in @urls.
	"""
	return urls[randint(0, len(urls) - 1)]

def random_flag():
	"""
	Return a randomly selected flag from all possible wget flags.
	"""
	flags = [' ', '-N', '-V', '-o /dev/null', '-q', '-v', '-nv', '--show-progress', '--no-use-server-timestamps', '--no-dns-cache', '--no-cookies', '--keep-session-cookies', '--ignore-length', '--save-headers', '--content-on-error', '--auth-no-challenge', '--no-check-certificate', '--follow-ftp', '--strict-comments']
	return flags[randint(0, len(flags) - 1)]

def poisson_distributed_wait_time(lam=5, size=30):
	"""
	Randomly generated @size number of wait times with expectation being @lam.
	Default @lam = 5 and @size = 30.
	"""
	return poisson(lam, size)

def coin_flip(prob):
	"""
	With probability @prob, this function will return 1.
	Otherwise it will return 0.
	"""
	if random.random() < prob:
		return 1
	else:
		return 0

def get_deb_name(url):
	"""Get the name of the downloaded Debian package to install from the @url.
	"""
	elements = url.split("/")
	return elements[-1]