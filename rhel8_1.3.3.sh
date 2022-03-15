#!/bin/bash

# 1.3.3 Ensure sudo log file exists
echo
echo \*\*\*\* 1.3.3 Ensure sudo log file exists
grep -Ei '^\s*Defaults\s+logfile=\S+' /etc/sudoers /etc/sudoers.d/* || echo "Defaults logfile=/var/log/sudo.log" >> /etc/sudoers




