#!/bin/bash

# 5.2.3 Ensure sudo log file exists --check
echo
echo \*\*\*\* 5.2.3 Ensure sudo log file exists
grep -Ei '^\s*Defaults\s+logfile=\S+' /etc/sudoers /etc/sudoers.d/* || echo "Defaults logfile=/var/log/sudo.log" >> /etc/sudoers



