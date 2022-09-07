#!/bin/bash
#干掉debian双IP的脚本，顺便改网卡名称到eth0
ip link set dev enP4p65s0 down
ip link set dev enP4p65s0 name eth0
ip link set eth0 up
nmcli connection reload


#nmcli con mod connection_name ifname eth0 type ethernet ip4 10.x.x.x/24 gw4 x.x.x.x
#nmcli con mod connection_name ipv4.address 10.x.x.x
#nmcli con mod connection_name ipv4.method manual
#nmcli con mod connection_name connection.autoconnect yes
#nmcli con up connection_name
