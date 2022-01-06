#!/bin/bash

# 2.2.1.2 Ensure chrony is configured
echo
echo \*\*\*\* 2.2.1.2 Ensure chrony is configured
grep ^OPTIONS /etc/sysconfig/chronyd && sed -i "/^OPTIONS=""/ cOPTIONS=\"-u chrony\"" /etc/sysconfig/chronyd || echo "OPTIONS="-u chrony"" >> /etc/sysconfig/chronyd







