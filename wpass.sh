#!/bin/sh
wpass=`date +%Y%m%d`
uci set wireless.@wifi-iface[2].key=$wpass
uci commit
wifi
