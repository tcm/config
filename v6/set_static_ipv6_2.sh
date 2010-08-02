#!/bin/bash

ip -6 addr del fd6c:cbe6:14ac:100::254/64 dev eth3
ip -6 addr add fd6c:cbe6:14ac:100::254/64 dev eth3

ip -6 addr del fd6c:cbe6:14ac:10::254/64 dev eth2
ip -6 addr add fd6c:cbe6:14ac:10::254/64 dev eth2

ip -6 addr show

echo "1" > /proc/sys/net/ipv6/conf/all/forwarding
echo ""
echo 'echo "1" > /proc/sys/net/ipv6/conf/all/forwarding'
