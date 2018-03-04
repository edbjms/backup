#!/bin/bash
# Installation script for the Puppet master
/root/puppet-enterprise/puppet-enterprise-installer -c /tmp/pe.conf
cd /opt/puppetlabs/bin
./puppet agent -t;./puppet agent -t
echo puppetlabs | ./puppet-access login --username admin --lifetime 0
./puppet-code deploy production --wait
