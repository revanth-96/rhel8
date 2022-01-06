#!/bin/bash

# 4.2.1.1 Ensure rsyslog Service is enabled
echo
echo \*\*\*\* 4.2.1.1 Ensure rsyslog Service is enabled
rpm -q rsyslog && systemctl enable rsyslog.service
