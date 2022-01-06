#!/bin/bash

# 1.1.5 Ensure nosuid option set on /tmp partition
echo
echo \*\*\*\* 1.1.5 Ensure nosuid option set on /tmp partition
findmnt -n /tmp | grep -i nosuid || mount -o remount,nosuid,nodev,noexec /tmp