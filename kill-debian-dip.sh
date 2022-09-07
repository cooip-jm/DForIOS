#!/bin/bash
#干掉debian双IP的脚本，顺便改网卡名称到eth0
ip link set dev enP4p65s0 down
ip link set dev enP4p65s0 name eth0
ip link set eth0 up
nmcli connection reload
