#!/bin/bash


# 1.1.14 Ensure /home partition includes the nodev option
echo
echo \*\*\*\* 1.1.14 Ensure /home partition includes the nodev option
findmnt -n /home | grep -i nodev || mount -o remount,nosuid,nodev,noexec /home
