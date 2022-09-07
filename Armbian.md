Armbian下快速添加网桥
打开终端
获取当前连接状态： nmcli con show
添加新的网桥： nmcli con add type bridge ifname br0
创建子网卡： nmcli con add type bridge-slave ifname eth0 master br0
打开 br0： nmcli con up br0

查看：网桥状态
nmcli con show
nmcli connection show --active
