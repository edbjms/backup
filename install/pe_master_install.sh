#!/bin/bash
# Installation script for the Puppet master
/root/puppet-enterprise/puppet-enterprise-installer -c /tmp/pe.conf
cd /opt/puppetlabs/bin
./puppet apply -e 'include pe_repo::platform::ubuntu_1604_amd64'
#echo puppetlabs | ./puppet-access login --username admin --lifetime 0
printf "nyc-agent\nlon-agent\n" >> /etc/puppetlabs/puppet/autosign.conf
./puppet-code deploy production --wait
