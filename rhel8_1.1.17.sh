#!/bin/bash

# 1.1.17 Ensure noexec option set on /dev/shm partition
echo
echo \*\*\*\* 1.1.17 Ensure noexec option set on /dev/shm partition
findmnt -n /dev/shm | grep -i noexec || mount -o remount,nosuid,nodev,noexec /dev/shm
