#!/bin/bash

# 1.1.4 Ensure nodev option set on /tmp partition
echo
echo \*\*\*\* 1.1.4 Ensure nodev option set on /tmp partition
findmnt -n /tmp | grep -i nodev || mount -o remount,nosuid,nodev,noexec /tmp