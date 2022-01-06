#!/bin/bash

# 5.3.21 Ensure SSH MaxStartups is configured
echo
echo \*\*\*\* 5.3.21 Ensure SSH MaxStartups is configured
sed -i "/^#MaxStartups 10:30:100/ cMaxStartups 10:30:60" /etc/ssh/sshd_config
sed -i "/^#MaxStartups 10:30:60/ cMaxStartups 10:30:60" /etc/ssh/sshd_config




