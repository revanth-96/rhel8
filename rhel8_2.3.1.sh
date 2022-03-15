#!/bin/bash

# 2.3.1  Ensure NIS Client is not installed
echo
echo \*\*\*\* 2.3.1 Ensure NIS Client is not installed
rpm -q ypbind && yum -y remove ypbind










