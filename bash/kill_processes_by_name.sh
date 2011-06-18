#!/bin/bash

echo "Kill rsync processes..."
kill `ps aux | grep rsync | grep -v grep | awk '{print $2}'`
echo "ready...!"

# oder killall -9 rsync 
# :-)
