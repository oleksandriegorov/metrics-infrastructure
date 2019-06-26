#!/bin/bash

yum install -y epel-release
rpm -Uvh http://yum.puppet.com/puppet6/puppet6-release-el-7.noarch.rpm
yum install -y puppet-agent vim bind-utils net-tools bash-completion telnet tcpdump jq stress-ng
puppet module install puppet-prometheus --version 6.4.0
