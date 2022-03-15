#!/bin/bash

# 5.5.5 Ensure default user umask is 027 or more restrictive
echo
echo \*\*\*\* 5.5.5 Ensure default user umask is 027 or more restrictive
egrep -q "^(\s*)umask\s+\S+(\s*#.*)?\s*$" /etc/bashrc && sed -ri "s/^(\s*)umask\s+\S+(\s*#.*)?\s*$/\1umask 027\2/" /etc/bashrc || echo "umask 027" >> /etc/bashrc
egrep -q "^(\s*)umask\s+\S+(\s*#.*)?\s*$" /etc/profile && sed -ri "s/^(\s*)umask\s+\S+(\s*#.*)?\s*$/\1umask 027\2/" /etc/profile || echo "umask 027" >> /etc/profile


