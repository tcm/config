#!/bin/bash

nohup /usr/bin/ii -i ~/irc -s chat.freenode.net -p 6665 -n jb72 &

cd ~/irc/chat.freenode.net/
echo "/j #ipv6" > in
