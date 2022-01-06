#!/bin/bash

# 5.3.11 Ensure SSH PermitEmptyPasswords is disabled
echo
echo \*\*\*\* 5.3.11 Ensure SSH PermitEmptyPasswords is disabled
egrep -q "^(\s*)PermitEmptyPasswords\s+\S+(\s*#.*)?\s*$" /etc/ssh/sshd_config && sed -ri "s/^(\s*)PermitEmptyPasswords\s+\S+(\s*#.*)?\s*$/\1PermitEmptyPasswords no\2/" /etc/ssh/sshd_config || echo "PermitEmptyPasswords no" >> /etc/ssh/sshd_config







