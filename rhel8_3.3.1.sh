#!/bin/bash

# 3.3.1 Ensure DCCP is disabled
echo
echo \*\*\*\* 3.3.1 Ensure DCCP is disabled
modprobe -n -v dccp | grep "install /bin/true" || echo "install dccp /bin/true" >> /etc/modprobe.d/CIS.conf
lsmod | egrep "dccp" && rmmod dccp
