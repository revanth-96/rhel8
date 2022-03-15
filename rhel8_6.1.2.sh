#!/bin/bash

# 6.1.2 Ensure permissions on /etc/passwd are configured
echo
echo \*\*\*\* 6.1.2 Ensure permissions on /etc/passwd are configured
chmod -t,u+r+w-x-s,g+r-w-x-s,o+r-w-x /etc/passwd




