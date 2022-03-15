#!/bin/bash


# 3.2.1 Ensure source routed packets are not accepted
echo
echo \*\*\*\* 3.2.1 Ensure source routed packets are not accepted
grep "net.ipv4.conf.all.accept_source_route" /etc/sysctl.conf && sed -ri "s/^(\s*)net.ipv4.conf.all.accept_source_route\s*=\s*\S+(\s*#.*)?\s*$/\1net.ipv4.conf.all.accept_source_route = 0\2/" /etc/sysctl.conf || echo "net.ipv4.conf.all.accept_source_route = 0" >> /etc/sysctl.conf
grep "net.ipv4.conf.default.accept_source_route" /etc/sysctl.conf && sed -ri "s/^(\s*)net.ipv4.conf.default.accept_source_route\s*=\s*\S+(\s*#.*)?\s*$/\1net.ipv4.conf.default.accept_source_route = 0\2/" /etc/sysctl.conf || echo "net.ipv4.conf.default.accept_source_route = 0" >> /etc/sysctl.conf
grep "net.ipv6.conf.all.accept_source_route" /etc/sysctl.conf && sed -ri "s/^(\s*)net.ipv6.conf.all.accept_source_route\s*=\s*\S+(\s*#.*)?\s*$/\1net.ipv6.conf.all.accept_source_route = 0\2/" /etc/sysctl.conf || echo "net.ipv6.conf.all.accept_source_route = 0" >> /etc/sysctl.conf
grep "net.ipv6.conf.default.accept_source_route" /etc/sysctl.conf && sed -ri "s/^(\s*)net.ipv6.conf.default.accept_source_route\s*=\s*\S+(\s*#.*)?\s*$/\1net.ipv6.conf.default.accept_source_route = 0\2/" /etc/sysctl.conf || echo "net.ipv6.conf.default.accept_source_route = 0" >> /etc/sysctl.conf
sysctl -w net.ipv4.conf.all.accept_source_route=0
sysctl -w net.ipv4.conf.default.accept_source_route=0
sysctl -w net.ipv4.route.flush=1
sysctl -w net.ipv6.conf.all.accept_source_route=0
sysctl -w net.ipv6.conf.default.accept_source_route=0
sysctl -w net.ipv6.route.flush=1












