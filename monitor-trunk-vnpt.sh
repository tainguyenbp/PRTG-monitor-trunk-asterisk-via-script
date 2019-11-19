#!/bin/bash
serviceIsRunning=false
value_trunk_vnpt=$(/usr/sbin/asterisk -rx "sip show peers" | grep "SIP_TRUNK_VNPT" |awk '{print $6}'| sed 2,2d)

if [ "$value_trunk_vnpt" == OK ]
    then
        serviceIsRunning=true
        echo "0:200:running"
    fi
if [ $serviceIsRunning == false ]
    then
        echo "2:404:UNREACHABLE"
    fi