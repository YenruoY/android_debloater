#!/bin/bash


start_removing(){
	echo 'DeBloater will start now. Type <yes> to conform : ';
	read conf;
	if [ $conf == "yes" ]
	then
		echo "Conformed..."
	
		pkg_s=$(<text.txt)
		i=0
		for pkg	in $pkg_s
		do
			echo ""
			echo "Uninstalling Package : $pkg_s"
			adb shell pm uninstall -k --user 0 $pkg
			((i++))
		done

	else
		echo "NOT conformed"
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

