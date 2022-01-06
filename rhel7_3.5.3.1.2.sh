#!/bin/bash

# 3.5.3.1.2 Ensure nftables is not installed with iptables
echo
echo \*\*\*\* 3.5.3.1.2  Ensure nftables is not installed with iptables
rpm -q nftables && yum remove nftables



