#!/bin/bash

# 3.5.3.1.1 Ensure iptables packages are installed
echo
echo \*\*\*\* 3.5.3.1.1  Ensure iptables packages are installed
rpm -q iptables || yum -y install iptables
rpm -q iptables-services || yum -y install iptables-services


