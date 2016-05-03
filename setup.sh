#!/bin/sh
mknod /dev/net/tun c 10 200
iptables -t nat -A POSTROUTING -s 192.168.11.0/24 -o eth0 -j MASQUERADE
iodined -f -c -P $PASSWORD 192.168.11.1 $HOST
