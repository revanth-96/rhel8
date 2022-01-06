#!/bin/bash

# 1.2.5 Disable the rhnsd Daemon
echo
echo \*\*\*\* 1.2.5 Disable the rhnsd Daemon
systemctl --now mask rhnsd

