netsh interface ipv6 add v6v4tunnel "tun1" 192.168.100.177 216.66.80.30

netsh interface ipv6 add address "tun1" 2001:470:1f0a:1212::2

netsh interface ipv6 add route ::/0  "tun1" 2001:470:1f0a:1212::1

pause
