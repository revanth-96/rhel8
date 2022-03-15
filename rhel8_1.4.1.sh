#!/bin/bash

# 1.4.1 Ensure AIDE is installed
echo
echo \*\*\*\* 1.4.1  Ensure AIDE is installed
rm -f /etc/yum.repos.d/redhat.repo
rpm -q aide || yum -y install aide

