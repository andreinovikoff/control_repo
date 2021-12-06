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
		key    => 'AAAAB3NzaC1yc2EAAAADAQABAAABAQDfheTi/UQs8zFnj0ZrGN9QjNO9c3/FgM2evRsnybLP0XOXQa4wEf+PEIQDN2dUrAbzFer6d535LqqSnmqmqzFDTzCNZwRwsWY6g07ZVbLD+YfnQQ6cfKnexlYJ6/TbAcBY6FyvMKoxWDvknTHR+Bni7uhx2UC9xgkmG3CtKC/K7LZoityx0YHzUyPsl7lzUxQ7bAxENd14V4RTUS29u4gj2iuSJXYMqPlsxzbXUANxPV9OTxBIlPrbCsTxn18RUWB9jHsILcrwSkJ48Cfg6Qo7d7x0ZP2ou4Jtk4yBlhlGtOcW7HqVZb3oRzaun9vmAGIL0TphJEaUPPMS+PXPqHc/',
	}  
}
