class profile::ssh_server {
	package {'openssh-server':
		ensure => present,
	}
	service { 'sshd':
		ensure => 'running',
		enable => 'true',
	}
	ssh_authorized_key { 'root@master.puppet.vm':
		ensure => present,
		user   => 'root',
		type   => 'ssh-rsa',
		key    => 'AAAAB3NzaC1yc2EAAAADAQABAAABAQC3msmH/e61+DIBsM47RdaR209pJuUCLvxzM9ow4gBB7HtJSLgaL0N/8Tx9+5j8CvlfsS2IMLlTIcrkD6Eopl/MP9IBATBcqip6rH9hSVnK6R63/9ROt+tj8aeGtnLZfSsPyRa1VakVUWKRnWEzvb0l3HZI+wIDdJ5ieJXVFGdDZlJhNP5s37paxc/NUHq90T5B7kWkIdlS6o79K4j6+VD5bf4InYgjbanbXX0wqaG7UEpEthZYoWbRJbngJSyWqSK1vptAWdb0nQyOnRoB0GdopLK6rEMlX5B8PE5N1Qiowd/lIN6Cy9atDw+tMFeHhEwDCUWMEo3nRgJh2dXrinP1',
	}
}
