#!/bin/bash

# 2.2.17 Ensure nfs-utils is not installed or the nfs-server service is masked
echo
echo \*\*\*\* 2.2.17 Ensure nfs-utils is not installed or the nfs-server service is masked
systemctl --now mask nfs-server









