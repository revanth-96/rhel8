#!/bin/bash

# 5.4.2 Ensure lockout for failed password attempts is configured
echo
echo \*\*\*\* 5.4.2 Ensure lockout for failed password attempts is configured
grep ^auth /etc/pam.d/password-auth | grep "pam_faillock.so preauth" || sed -i '6 i auth        required      pam_faillock.so preauth audit silent deny=5 unlock_time=900' /etc/pam.d/password-auth
grep ^auth /etc/pam.d/password-auth | grep "pam_faillock.so authfail" || sed -i '7 i auth        [default=die] pam_faillock.so authfail audit deny=5 unlock_time=900' /etc/pam.d/password-auth
grep ^account /etc/pam.d/password-auth | grep "pam_faillock.so" || sed -i '13 i account     required      pam_faillock.so' /etc/pam.d/password-auth

grep ^auth /etc/pam.d/system-auth | grep "pam_faillock.so preauth" || sed -i '6 i auth        required      pam_faillock.so preauth audit silent deny=5 unlock_time=900' /etc/pam.d/system-auth
grep ^auth /etc/pam.d/system-auth | grep "pam_faillock.so authfail" || sed -i '7 i auth       [default=die] pam_faillock.so authfail audit deny=5 unlock_time=900' /etc/pam.d/system-auth
grep ^account /etc/pam.d/system-auth | grep "pam_faillock.so" || sed -i '13 i account     required      pam_faillock.so' /etc/pam.d/system-auth

#grep ^auth /etc/pam.d/system-auth | grep "pam_unix.so" && sed -i 's/auth        sufficient    pam_unix.so nullok try_first_pass/auth        [success=1 default=bad]    pam_unix.so/' /etc/pam.d/system-auth || echo "auth        [success=1 default=bad]    pam_unix.so" >> /etc/pam.d/system-auth
#grep ^auth /etc/pam.d/system-auth | grep "pam_faillock.so authsucc" || sed -i '8 a auth        sufficient    pam_faillock.so authsucc audit deny=5 unlock_time=900' /etc/pam.d/system-auth
#grep ^auth /etc/pam.d/password-auth | grep "pam_unix.so" && sed -i 's/auth        sufficient    pam_unix.so nullok try_first_pass/auth        [success=1 default=bad]    pam_unix.so/' /etc/pam.d/password-auth || echo "auth        [success=1 default=bad]    pam_unix.so" >> /etc/pam.d/password-auth
#grep ^auth /etc/pam.d/password-auth | grep "pam_faillock.so authsucc" || sed -i '8 a auth        sufficient    pam_faillock.so authsucc audit deny=5 unlock_time=900' /etc/pam.d/password-auth
