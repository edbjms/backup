#!/bin/bash
hostname=`/bin/hsotname`
echo datacenter=${hostname%-*}
