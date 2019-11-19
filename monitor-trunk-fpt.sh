#!/bin/bash
serviceIsRunning=false
value_trunk_fpt=$(/usr/sbin/asterisk -rx "sip show peers" | grep "SIP_TRUNK_FPT" |awk '{print $6}'| sed 2,2d)

if [ "$value_trunk_fpt" == OK ]
    then
        serviceIsRunning=true
        echo "0:200:running"
    fi
if [ $serviceIsRunning == false ]
    then
        echo "2:404:UNREACHABLE"
    fi