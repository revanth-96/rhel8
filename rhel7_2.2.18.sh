#!/bin/bash

# 2.2.18 Ensure rpcbind is not installed or the rpcbind services are masked
echo
echo \*\*\*\* 2.2.18 Ensure rpcbind is not installed or the rpcbind services are masked
systemctl --now mask rpcbind
systemctl --now mask rpcbind.socket









