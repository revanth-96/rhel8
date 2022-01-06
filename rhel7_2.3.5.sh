#!/bin/bash

# 2.3.5 Ensure LDAP client is not installed
echo
echo \*\*\*\* 2.3.5 Ensure LDAP client is not installed
rpm -q openldap-clients && yum -y remove openldap-clients











