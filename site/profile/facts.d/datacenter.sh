#!/bin/bash
hostname=`/bin/hostname`
echo datacenter=${hostname%-*}
