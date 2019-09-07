#!/bin/bash

# 1. Pipe errors to a file.
# cp /etc/skel . 2> error.txt

# 2. List all files in /etc/ beginning with v* and number them.
#find /etc -name "v*" 2> err.txt | tee files.txt | nl

# 3. Same exercise but print inode-number only. Sort the numbers descending.
find /etc -name "v*" 2> err.txt | xargs -n1 ls -li | cut -d " " -f1 | grep -v "insg*" |sort -n | tac 
