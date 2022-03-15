#!/bin/bash

# 5.2.12 Ensure SSH PermitUserEnvironment is disabled
echo
echo \*\*\*\* 5.2.12 Ensure SSH PermitUserEnvironment is disabled
egrep -q "^(\s*)PermitUserEnvironment\s+\S+(\s*#.*)?\s*$" /etc/ssh/sshd_config && sed -ri "s/^(\s*)PermitUserEnvironment\s+\S+(\s*#.*)?\s*$/\1PermitUserEnvironment no\2/" /etc/ssh/sshd_config
echo "PermitUserEnvironment no" >> /etc/ssh/sshd_config




