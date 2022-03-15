#!/bin/bash

# 5.2.10 Ensure SSH root login is disabled 
echo
echo \*\*\*\* 5.2.10 Ensure\ SSH\ root\ login\ is\ disabled
grep "PermitRootLogin" /etc/ssh/sshd_config && sed -i 's/.*PermitRootLogin.*/PermitRootLogin no/' /etc/ssh/sshd_config || echo "PermitRootLogin no" >> /etc/ssh/sshd_config
systemctl restart sshd






