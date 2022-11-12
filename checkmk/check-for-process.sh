#!/bin/bash

# (jb) 9/2022

FILTER="job_dispatcher_node_02"
#FILTER="no_match"
GREPCMD="grep"

# Filter process-list for expression without grep
PIPE=$(ps ax | grep $FILTER | grep -v $GREPCMD | wc -l)

#echo $PIPE

if [ $PIPE -ge 1 ]; then
  echo "0 job_dispatcher_node_02 - job_dispatcher_node_02.sh running OK"
  exit 0
else
  echo "2 job_dispatcher_node_02 - job_dispatcher_node_02.sh not running ERROR"
  exit 2
fi
