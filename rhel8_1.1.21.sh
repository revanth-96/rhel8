#!/bin/bash

# 1.1.21 Ensure sticky bit is set on all world-writable directories
echo
echo \*\*\*\* 1.1.21 Ensure sticky bit is set on all world-writable directories
df --local -P | awk {'if (NR!=1) print $6'} | xargs -I '{}' find '{}' -xdev -type d \( -perm -0002 -a ! -perm -1000 \) 2>/dev/null | xargs chmod a+t

