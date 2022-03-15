#!/bin/bash

echo
echo \*\*\*\* 5.2.19 Ensure SSH MaxSessions is limited
sed -i "/^#MaxSessions 10/ cMaxSessions 4" /etc/ssh/sshd_config
grep -i "MaxSessions" /etc/ssh/sshd_config || echo "MaxSessions 4" >> /etc/ssh/sshd_config




