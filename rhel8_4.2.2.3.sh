#!/bin/bash

# 4.2.2.3 Ensure journald is configured to write logfiles to persistent disk 
echo
echo \*\*\*\* 4.2.2.3 Ensure journald is configured to write logfiles to persistent disk
grep "Storage" /etc/systemd/journald.conf && sed -i "/^#Storage=auto/ cStorage=persistent" /etc/systemd/journald.conf || echo "Storage=persistent" >> /etc/systemd/journald.conf
