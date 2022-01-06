#!/bin/bash

# 1.1.6 Ensure /dev/shm is configured
echo
echo \*\*\*\* 1.1.6 Ensure /dev/shm is configured
grep -E '\s/dev/shm\s' /etc/fstab || (echo "tmpfs /dev/shm tmpfs defaults,noexec,nodev,nosuid,seclabel 0 0" >>/etc/fstab && mount -o remount,noexec,nodev,nosuid /dev/shm)
