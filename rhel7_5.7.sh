#!/bin/bash

# 5.7 Ensure access to the su command is restricted
echo
echo \*\*\*\* 5.7 Ensure access to the su command is restricted
groupadd sugroup
echo "auth required pam_wheel.so use_uid group=sugroup" >> /etc/pam.d/su



