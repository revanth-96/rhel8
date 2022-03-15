#!/bin/bash

# 4.2.1.2 Ensure rsyslog Service is enabled
echo
echo \*\*\*\* 4.2.1.2 Ensure rsyslog Service is enabled
rpm -q rsyslog && systemctl enable rsyslog.service
