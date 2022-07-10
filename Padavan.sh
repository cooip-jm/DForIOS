###路由器自定义脚本 在路由器启动后执行:
#!/bin/sh
wpass=`date +%Y%m%d`
two=2.4G-`date +%A`
five=5G-`date +%A`
nvram set rt_guest_ssid=$two
nvram set wl_guest_ssid=$five
nvram set rt_guest_wpa_psk=$wpass 
logger -t "【自动设置 今天的 2.4G WIFI密码】" "2.4G无线WIFI密码已设置为$wpass"
nvram set wl_guest_wpa_psk=$wpass 
logger -t "【自动设置 今天的 访客5G WIFI密码】" "5G无线WIFI密码已设置为$wpass"
nvram commit 
radio2_restart
radio5_restart
