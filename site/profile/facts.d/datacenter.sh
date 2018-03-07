#!/bin/bash
hostname=`/bin/hostname`
echo datacenter=${hostname#-*}
#echo datacenter=${hostname%-*}
