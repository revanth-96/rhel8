#!/bin/bash

# 6.1.8 Ensure permissions on /etc/group are configured
echo
echo \*\*\*\* 6.1.8 Ensure permissions on /etc/group are configured
chmod -t,u+r+w-x-s,g+r-w-x-s,o+r-w-x /etc/group


