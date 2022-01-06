#!/bin/bash

# 3.3.3 Ensure secure ICMP redirects are not accepted
echo
echo \*\*\*\* 3.3.3  Ensure secure ICMP redirects are not accepted
grep "net.ipv4.conf.all.secure_redirects" /etc/sysctl.conf && sed -ri "s/^(\s*)net.ipv4.conf.all.secure_redirects\s*=\s*\S+(\s*#.*)?\s*$/\1net.ipv4.conf.all.secure_redirects = 0\2/" /etc/sysctl.conf || echo "net.ipv4.conf.all.secure_redirects = 0" >> /etc/sysctl.conf
grep "net.ipv4.conf.default.secure_redirects" /etc/sysctl.conf && sed -ri "s/^(\s*)net.ipv4.conf.default.secure_redirects\s*=\s*\S+(\s*#.*)?\s*$/\1net.ipv4.conf.default.secure_redirects = 0\2/" /etc/sysctl.conf || echo "net.ipv4.conf.default.secure_redirects = 0" >> /etc/sysctl.conf
sysctl -w net.ipv4.conf.all.secure_redirects=0
sysctl -w net.ipv4.conf.default.secure_redirects=0
sysctl -w net.ipv4.route.flush=1
