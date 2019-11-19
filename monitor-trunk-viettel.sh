#!/bin/bash
serviceIsRunning=false
value_trunk_viettel=$(/usr/sbin/asterisk -rx "sip show peers" | grep "SIP_TRUNK_VIETTEL" |awk '{print $6}'| sed 2,2d)

if [ "$value_trunk_viettel" == OK ]
    then
        serviceIsRunning=true
        echo "0:200:running"
    fi
if [ $serviceIsRunning == false ]
    then
        echo "2:404:UNREACHABLE"
    fi