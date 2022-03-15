#!/bin/bash

# 5.5.4 Ensure default group for the root account is GID 0
echo
echo \*\*\*\* 5.5.4 Ensure default group for the root account is GID 0
usermod -g 0 root
