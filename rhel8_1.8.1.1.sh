#!/bin/bash

# 1.8.1.1 Ensure message of the day is configured properly
echo
touch /etc/motd
chown root:root /etc/motd
chmod 644 /etc/motd
echo \*\*\*\* 1.8.1.1 Ensure message of the day is configured properly
[ -s /etc/motd ] || echo "All activities performed on this system will be monitored." > /etc/motd
sed -ri 's/(\\v|\\r|\\m|\\s)//g' /etc/motd





