#!/bin/bash

# 6.1.4 Ensure permissions on /etc/shadow are configured
echo
echo \*\*\*\* 6.1.4 Ensure permissions on /etc/shadow are configured
chmod -t,u-x-s,g-w-x-s,o-r-w-x /etc/shadow



