#!/usr/bin/env bash

# TODO: Variables for each github repo 
github="https://www.github.com/x3830s/"
linux_environment="https://www.github.com/x3830s/Linux-Environment"

# TODO: Variables for each github repo directory
linux_environment_dir="Linux-Environment"

# Check and download Linux-Environment repo
github_repo () {
	# Don't ask for pass if can't connect or wrong repo
	`GIT_ASKPASS=true git ls-remote "$1" > /dev/null 2>&1`
	if [ "$?" -ne 0 ] 
	then
		touch install.log
		echo -e "[Failed] $1.\n" >> install.log
		echo "Unable to connect to $1. Check install.log"
		exit 1
	else # on success
	 	git clone $1
		if [ -d $2 ]	
		then
			echo -e "\n[+] The package at $1 was successful, located in $2 \n"
			echo -e "\n[+] The package at $1 was successful, located in $2 \n" >> install.log
		fi
	fi
	}

# TODO: Move .vimrc to appropriate folder
mv "$linux_environment_dir/.vimrc" ./home
echo -e "\n[+] Moved .vimrc to ~.\n" >> install.log
# TODO: Move .xresources to appropriate folder

# TODO: Powerline fonts
 
# TODO: Functions to create the working autoscript

# TODO: Basic install vs Full install
github_repo $linux_environment $linux_environment_dir