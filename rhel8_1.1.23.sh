#!/bin/bash

# 1.1.23 Disable USB Storage
echo
echo \*\*\*\* 1.1.23 Disable USB Storage
modprobe -n -v usb-storage | grep "install /bin/true" || echo "install usb-storage /bin/true" >> /etc/modprobe.d/CIS.conf
lsmod | egrep "usb-storage" && rmmod usb-storage

