#!/bin/bash
status=$(cat /tmp/status.tmp | grep $1| grep -v Host | awk 'NR==1{print $NF}')

if [[ $status == Running ]]; 
then
  echo "Running"
else
 echo "Stopped"
fi
