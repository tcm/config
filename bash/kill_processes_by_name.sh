ps aux | grep PROGRAMMNAME | grep -v grep | awk '{print $2;}'
