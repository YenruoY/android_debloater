# Android DeBloater / Package remover
Removes / Disables packages on android though ADB(Android Debug Bridge). 

These apps are usually those apps which can't be removed by Android Package manager. Most of these apps are pre installed on andoid regardless of the user wants those apps or not. 

This scrip needs a <b>Text file</b> named <b>package.list</b>, which will contain the name of the packages to be removed. 
* <b>Note : One line should contain only one apk package names without any space in between</b>

# Instructions 
  1. In the `package.list` file, insert all the package names which are to be removed
  
    * Side note there are two more file `package2.list` and `google.list` containing some more packages.
  2. ADB <b>MUST</b> be installed and USB debugging must be turned ON in the android device
  3. Connect the android device with your computer through USB cable
  4. Run the script
  5. And done!!

# Dependencies
```
 1. ADB
```

# Notes
 1. The package name needed here is not same as the package name shown below the app icons. To get the exact APK name, 
```
	Go to Settings -> Apps -> Manage Apps -> Select the app -> Tap on the App info icon 
	The field 'APK Name' will have the exact apk package name of the app
```

# Disclaimer 

Its a simple script which is easy for a normal user to use and beginner developer to understand the working of the script. 

Feel free to contribute to this code or use it as you want.
