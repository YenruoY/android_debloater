# Android DeBloater / Package remover

Removes / Disables not uninstallable packages on Android though ADB(Android Debug Bridge). Works with any version of Android upto 12.

These apps are usually can't be removed by Android Package manager. Most of these apps are pre installed on Android regardless of the user wants them or not. 

The script needs a <b>Text file</b> named <b>package.list</b>, which will contain the name of the packages to be removed. 
* <b>Note : One line should contain only one apk package names without any space in between</b>.

# Instructions 

  1. In the `package.list` file, insert all the package names that are to be removed (there are two more file `package2.list` and `google.list` containing some more packages)
  2. ADB <b>MUST</b> be installed and USB debugging must be turned ON in the Android device
  3. Connect the Android device with your computer through USB cable
  4. Run the script
  5. And done!!

# Dependencies

1. ADB

# Notes

1. The package name needed here is not same as the package name shown in the app drawer. To get the exact APK name, 
    ```
	Go to Settings -> Apps -> Manage Apps -> Select the app -> Tap on the App info icon 
	The field 'APK Name' will have the exact apk package name of the app
    ```
2. Do check all the names of all the applications that are going to get remove to prevent any data loss.

3. The **Google Play Store** and **Google Play Service** have left out and this script will NOT remove them by default.

# Disclaimer 

Its a simple script which is easy to use and for beginner to understand the code. 

Feel free to contribute to this code or use it as you want.
