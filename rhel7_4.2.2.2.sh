#!/bin/bash

# 4.2.2.2 Ensure journald is configured to compress large log files
echo
echo \*\*\*\* 4.2.2.2 Ensure journald is configured to compress large log files
grep "Compress" /etc/systemd/journald.conf && sed -i "/^#Compress=yes/ cCompress=yes" /etc/systemd/journald.conf || echo "Compress=yes" >> /etc/systemd/journald.conf
