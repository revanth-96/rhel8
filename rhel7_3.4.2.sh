#!/bin/bash

# 3.4.2 Ensure SCTP is disabled
echo
echo \*\*\*\* 3.4.2 Ensure SCTP is disabled
modprobe -n -v sctp | grep "install /bin/true" || echo "install sctp /bin/true" >> /etc/modprobe.d/CIS.conf
lsmod | egrep "sctp" && rmmod sctp

