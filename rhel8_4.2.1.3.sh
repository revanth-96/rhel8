#!/bin/bash

# 4.2.1.3 Ensure rsyslog default file permissions configured
echo
echo \*\*\*\* 4.2.1.3 Ensure rsyslog default file permissions configured
grep ^\$FileCreateMode /etc/rsyslog.conf /etc/rsyslog.d/*.conf || echo "\$FileCreateMode 0640" | tee -a /etc/rsyslog.conf /etc/rsyslog.d/*.conf > /dev/null






