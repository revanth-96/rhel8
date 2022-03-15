#!/bin/bash

# 2.2.1.2 Ensure chrony is configured
echo
echo \*\*\*\* 2.2.1.2 Ensure chrony is configured
grep -E "^(server)" /etc/chrony.conf || echo "server 10.0.0.2" >> /etc/chrony.conf







