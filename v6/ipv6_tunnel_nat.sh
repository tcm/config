#!/bin/bash

modprobe ipv6

# SUSE 10.3
# modprobe sit 

ip tunnel del he-ipv6

sleep 3

ip tunnel add he-ipv6 mode sit remote 216.66.80.30 local 192.168.100.41 ttl 255
ip link set he-ipv6 up
ip addr add 2001:470:1f0a:1212::2/64 dev he-ipv6
ip route add ::/0 dev he-ipv6
ip -f inet6 addr


