#!/bin/bash

# 3.5.3.3 Configure IPv6 ip6tables
echo
echo \*\*\*\* 3.5.3.3 Configure IPv6 ip6tables

# 3.5.3.3.4 Ensure default deny firewall policy 
ip6tables -P INPUT DROP 
ip6tables -P OUTPUT DROP 
ip6tables -P FORWARD DROP 

# 3.5.3.3.1 Ensure loopback traffic is configured 
ip6tables -A INPUT -i lo -j ACCEPT 
ip6tables -A OUTPUT -o lo -j ACCEPT 
ip6tables -A INPUT -s ::1 -j DROP 

# 3.5.3.3.2 Ensure outbound and established connections are configured 
ip6tables -A OUTPUT -p tcp -m state --state NEW,ESTABLISHED -j ACCEPT 
ip6tables -A OUTPUT -p udp -m state --state NEW,ESTABLISHED -j ACCEPT 
ip6tables -A OUTPUT -p icmp -m state --state NEW,ESTABLISHED -j ACCEPT 
ip6tables -A INPUT -p tcp -m state --state ESTABLISHED -j ACCEPT 
ip6tables -A INPUT -p udp -m state --state ESTABLISHED -j ACCEPT 
ip6tables -A INPUT -p icmp -m state --state ESTABLISHED -j ACCEPT 

# 3.5.3.3.3 Open inbound ssh(tcp port 22) connections 
ip6tables -A INPUT -p tcp --dport 22 -m state --state NEW -j ACCEPT
ip6tables -A INPUT -p tcp --dport 443 -m state --state NEW -j ACCEPT

# 3.5.3.3.5 Ensure iptables rules are saved
service ip6tables save

# 3.5.3.3.6 Ensure ip6tables is enabled and running
systemctl --now start ip6tables
systemctl enable ip6tables.service





