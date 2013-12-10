#!/bin/bash

route del -net 0.0.0.0/0 gw 192.168.184.150
route add -net 0.0.0.0/0 gw 192.168.248.2

echo 'nameserver 192.168.248.2' >> /etc/resolv.conf
