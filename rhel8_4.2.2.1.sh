#!/bin/bash

# 4.2.2.1 Ensure journald is configured to send logs to rsyslog
echo
echo \*\*\*\* 4.2.2.1 Ensure journald is configured to send logs to rsyslog
grep -e ^\s*ForwardToSyslog /etc/systemd/journald.conf || echo "ForwardToSyslog=yes" >> /etc/systemd/journald.conf






