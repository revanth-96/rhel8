##!/bin/bash

## 3.4.4 Configure IPv4 iptables
#echo
#echo \*\*\*\* 3.4.4 Configure IPv4 iptables

## 3.4.4.1.2 Ensure iptables loopback traffic is configured
#sudo iptables -A INPUT -i lo -j ACCEPT
#sudo iptables -A OUTPUT -o lo -j ACCEPT
#sudo iptables -A INPUT -s 127.0.0.0/8 -j DROP

## 3.4.4.1.3 Ensure iptables outbound and established connections are
#sudo iptables -A OUTPUT -p tcp -m state --state NEW,ESTABLISHED -j ACCEPT
#udo iptables -A OUTPUT -p udp -m state --state NEW,ESTABLISHED -j ACCEPT
#sudo iptables -A OUTPUT -p icmp -m state --state NEW,ESTABLISHED -j ACCEPT
#sudo iptables -A INPUT -p tcp -m state --state ESTABLISHED -j ACCEPT
#sudo iptables -A INPUT -p udp -m state --state ESTABLISHED -j ACCEPT
#sudo iptables -A INPUT -p icmp -m state --state ESTABLISHED -j ACCEPT

## 3.4.4.1.4 Ensure iptables rules exist for all open ports
#sudo iptables -A INPUT -p tcp --dport 22 -m state --state NEW -j ACCEPT
#sudo iptables -A INPUT -p tcp --dport 443 -m state --state NEW -j ACCEPT
#sudo iptables -A INPUT -p tcp --dport 80 -m state --state NEW -j ACCEPT
#sudo iptables -A INPUT -p tcp --dport 514 -m state --state NEW -j ACCEPT

## 3.4.4.1.1 Ensure iptables default deny firewall policy
#sudo iptables -P INPUT DROP
#sudo iptables -P OUTPUT DROP
#sudo iptables -P FORWARD DROP

## 3.5.3.2.5 Ensure iptables rules are saved
#service iptables save

## 3.4.4.1.5 Ensure iptables is enabled and running
#systemctl --now enable iptables






