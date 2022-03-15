#!/bin/bash

# 1.4.2 Ensure filesystem integrity is regularly checked
echo
echo \*\*\*\* 1.4.2 Ensure\ filesystem\ integrity\ is\ regularly\ checked
(crontab -u root -l; crontab -u root -l | egrep -q "^0 5 \* \* \* /usr/sbin/aide --check$" || echo "0 5 * * * /usr/sbin/aide --check" ) | crontab -u root -


