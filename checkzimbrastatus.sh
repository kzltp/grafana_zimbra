#!/bin/bash
status=$(cat /tmp/status.tmp | grep $1| grep -v Host | awk '{print $2}')

if [[ $status == Running ]]; 
then
  echo "Running"
else
 echo "Stopped"
fi
