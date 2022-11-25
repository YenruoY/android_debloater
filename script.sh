#!/bin/bash

bold="$(tput bold)"
red="$(tput setaf 1)"
yellow="$(tput setaf 3)"
reset="$(tput sgr0)"

start_removing(){

	pkg_name="google.list"

	pkg_s=$(<$pkg_name)
	echo "DeBloater will start now.";
	echo "${yellow}[WARNING]${reset} The packages provided in the file named ${bold}${red} $pkg_name ${reset} will be removed";
	echo "Type <yes> to conform : ";

	read conf;
	if [ $conf == "yes" ]
	then
		echo "Conformed..."
	
		i=0
		for pkg	in $pkg_s
		do
			echo ""
			echo "Uninstalling Package : $pkg"
			adb shell pm uninstall -k --user 0 $pkg
			((i++))
		done

	else
		echo "NOT conformed. Exiting..."
	fi
}


if [ "$(which adb)" == "" ]
then
	echo "Package 'adb' is not installed."
	echo "Exiting..."
else 
	echo "adb is installed"
	echo "List of devices.."
	device=$(adb devices | tail -2 )
	echo "$device"	
	start_removing
fi

