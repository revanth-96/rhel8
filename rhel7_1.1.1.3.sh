#!/bin/bash

# 1.1.1.3 Ensure mounting of udf filesystems is disabled
echo
echo \*\*\*\* 1.1.1.3 Ensure mounting of udf filesystems is disabled
modprobe -n -v udf | grep "install /bin/true" || echo "install udf /bin/true" >> /etc/modprobe.d/CIS.conf
lsmod | egrep "udf" && rmmod udf