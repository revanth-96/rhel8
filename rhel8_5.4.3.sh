#!/bin/bash

#5.4.3 Ensure password reuse is limited
echo
echo \*\*\*\* 5.4.3 Ensure password reuse is limited
egrep -q "^\s*password\s+sufficient\s+pam_unix.so(\s+.*)$" /etc/pam.d/system-auth && sed -ri '/^\s*password\s+sufficient\s+pam_unix.so\s+/ { /^\s*password\s+sufficient\s+pam_unix.so(\s+\S+)*(\s+remember=[0-9]+)(\s+.*)?$/! s/^(\s*password\s+sufficient\s+pam_unix.so\s+)(.*)$/\1remember=5 \2/ }' /etc/pam.d/system-auth && sed -ri 's/(^\s*password\s+sufficient\s+pam_unix.so(\s+\S+)*\s+)remember=[0-9]+(\s+.*)?$/\1remember=5\3/' /etc/pam.d/system-auth || echo Ensure\ password\ reuse\ is\ limited /etc/pam.d/system-auth not configured.
egrep -q "^\s*password\s+sufficient\s+pam_unix.so(\s+.*)$" /etc/pam.d/password-auth && sed -ri '/^\s*password\s+sufficient\s+pam_unix.so\s+/ { /^\s*password\s+sufficient\s+pam_unix.so(\s+\S+)*(\s+remember=[0-9]+)(\s+.*)?$/! s/^(\s*password\s+sufficient\s+pam_unix.so\s+)(.*)$/\1remember=5 \2/ }' /etc/pam.d/password-auth && sed -ri 's/(^\s*password\s+sufficient\s+pam_unix.so(\s+\S+)*\s+)remember=[0-9]+(\s+.*)?$/\1remember=5\3/' /etc/pam.d/password-auth || echo Ensure\ password\ reuse\ is\ limited - /etc/pam.d/password-auth not configured.
