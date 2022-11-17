#!/bin/bash

PROJECT_DIR=`pwd`

echo ${PROJECT_DIR}

ifconfig wlan0 192.168.0.1 netmask 255.255.255.0
hostapd -B /etc/wlan/hostapd.conf

mkdir -p /var/lib/misc
touch /var/lib/misc/udhcpd.leases
udhcpd -f /etc/udhcpd.conf  &