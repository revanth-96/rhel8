#!/bin/bash

# 5.3.8 Ensure SSH IgnoreRhosts is enabled
echo
echo \*\*\*\* 5.3.8 Ensure SSH IgnoreRhosts is enabled
egrep -q "^(\s*)IgnoreRhosts\s+\S+(\s*#.*)?\s*$" /etc/ssh/sshd_config && sed -ri "s/^(\s*)IgnoreRhosts\s+\S+(\s*#.*)?\s*$/\1IgnoreRhosts yes\2/" /etc/ssh/sshd_config || echo "IgnoreRhosts yes" >> /etc/ssh/sshd_config






