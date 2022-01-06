#!/bin/bash

# 5.5.1.1 Ensure password expiration is 365 days or less
echo
echo \*\*\*\* 5.5.1.1 Ensure password expiration is 365 days or less
grep "PASS_MAX_DAYS" /etc/login.defs && sed -i '0,/PASS_MAX_DAYS/! {0,/PASS_MAX_DAYS/ s/.*PASS_MAX_DAYS.*/PASS_MAX_DAYS 90/}' /etc/login.defs || echo "PASS_MAX_DAYS 90" >> /etc/login.defs		  
getent passwd | cut -f1 -d ":" | xargs -n1 chage --maxdays 90
