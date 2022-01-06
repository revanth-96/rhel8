#!/bin/bash

# 1.1.1.1 Ensure mounting of cramfs filesystems is disabled
echo
echo \*\*\*\*1.1.1.1 Ensure mounting of cramfs filesystems is disabled
modprobe -n -v cramfs | grep "install /bin/true" || echo "install cramfs /bin/true" >> /etc/modprobe.d/CIS.conf
lsmod | egrep "cramfs" && rmmod cramfs