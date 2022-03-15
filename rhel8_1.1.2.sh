#!/bin/bash

# 1.1.2 Ensure /tmp is configured
echo
echo \*\*\*\* 1.1.2 Ensure /tmp is configured
findmnt /tmp || (echo "tmpfs /tmp tmpfs defaults,rw,nosuid,nodev,noexec,relatime 0 0" >>/etc/fstab && mount /tmp)
