#!/bin/bash

# 2.2.1.1 Ensure time synchronization is in use
echo
echo \*\*\*\* 2.2.1.1 Ensure time synchronization is in use
rpm -q ntp || rpm -q chrony || yum -y install chrony







