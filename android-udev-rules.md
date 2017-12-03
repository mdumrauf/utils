# android-udev-rules

In case your android device is not recognized by your Linux PC or Mac.

```
# Clone the repos
$ cd /opt/ && git clone https://github.com/M0Rf30/android-udev-rules.git

# Create a sym-link to the rules file
$ sudo ln -sf $PWD/android-udev-rules/51-android.rules /etc/udev/rules.d/51-android.rules

# Change file permissions
$ sudo chmod a+r /etc/udev/rules.d/51-android.rules

# Add the adbusers group if it's doesn't already exist
$ sudo groupadd adbusers

# Add your user to the adbusers group
$ sudo usermod -a -G adbusers $(whoami)

# Restart UDEV
$ sudo udevadm control --reload-rules
$ sudo service udev restart

# Restart the ADB server
$ adb kill-server

# Replug your Android device and verify that USB debugging is enabled in developer options
$ adb devices

# You should now see your device
```
