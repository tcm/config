#!/bin/bash

ip -6 addr del fd6c:cbe6:14ac:100::2/64 dev eth0
ip -6 addr add fd6c:cbe6:14ac:100::2/64 dev eth0

# veraltet
#ip -6 addr del 2001:db8::1/64 dev eth0
#ip -6 addr add 2001:db8::1/64 dev eth0

ip -6 addr show

echo "1" > /proc/sys/net/ipv6/conf/all/forwarding
echo ""
echo 'echo "1" > /proc/sys/net/ipv6/conf/all/forwarding'
