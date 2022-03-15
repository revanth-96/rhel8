#!/bin/bash

# 1.5.1 Ensure permissions on bootloader config are configured
echo
echo \*\*\*\* 1.5.1 Ensure permissions on bootloader config are configured
chmod 600 /boot/grub2/grub.cfg
chown root:root /boot/grub2/grub.cfg
chmod og-rwx /boot/grub2/grub.cfg
mkdir /boot/grub2/user.cfg
chown root:root /boot/grub2/user.cfg
chmod og-rwx /boot/grub2/user.cfg
chmod 600 /boot/grub2/user.cfg



