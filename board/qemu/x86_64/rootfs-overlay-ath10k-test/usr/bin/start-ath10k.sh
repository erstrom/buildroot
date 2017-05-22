#! /bin/sh

modprobe ath10k_usb
sleep 1

ifconfig wlan0 up
sleep 1

wpa_supplicant -B -Dnl80211 -iwlan0 -c /etc/wpa_supplicant.conf
sleep 2

udhcpc -i wlan0
sleep 1
