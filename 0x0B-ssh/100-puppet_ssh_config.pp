#!/usr/bin/env bash

# Using puppet to make changes to configuration files

file { 'etc/ssh/ssh_config':
	ensure => present,

content =>"
	#SSH client configuration file
	host*
	IdentityFile ~/.ssh/school
	PasswordAuthentication no
	",
}
