#!/bin/bash

# 1.1.3 Ensure noexec option set on /tmp partition
echo
echo \*\*\*\* 1.1.3 Ensure noexec option set on /tmp partition
findmnt -n /tmp | grep -i noexec || mount -o remount,nosuid,nodev,noexec /tmp