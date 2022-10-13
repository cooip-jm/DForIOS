Radxa Rock5B pimox7【proxmox-ve】安装手记

 一、radxa官方编译debian 下载
使用：https://github.com/radxa-build/rock-5b/releases

解压缩
TF卡中写入镜像











5B 插上网线，通电开机
路由器中查询Rock 5B  IP地址







ssh rock@10.0.1.70
密码：rock

sudo su
————————
换源
sudo sed -i 's/httpredir.debian.org/mirrors.ustc.edu.cn/g' /etc/apt/sources.list

apt update


二、填坑radxa官方debian未打包的一些必须软件包

sudo apt install ssh-askpass 
apt install gnupg
apt install gnupg2


三、网络及PVE前置设定

设置本机IP地址
enP4p65s0
nano /etc/network/interfaces.d/enP4p65s0

######

auto enP4p65s0
iface enP4p65s0 inet static
    address 10.0.1.70
    netmask 255.255.255.0
    gateway 10.0.1.1
    dns-nameservers 10.0.1.1

#######
/etc/init.d/networking restart




配置hosts文件，关闭IPV6
nano /etc/hosts
====

127.0.0.1       localhost
10.0.1.70       rock.pve        rock

# The following lines are desirable for IPv6 capable hosts
#::1     localhost ip6-localhost ip6-loopback
#ff02::1 ip6-allnodes
#ff02::2 ip6-allrouters


==============
网络环境配置后建议reboot 一次


添加源
==============================
echo "deb https://raw.githubusercontent.com/pimox/pimox7/master/ dev/" > /etc/apt/sources.list.d/pimox.list

curl https://raw.githubusercontent.com/pimox/pimox7/master/KEY.gpg | apt-key add -


=============
配置路径*（可选,某些debian版本可能会产生不可预知错误）
export PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
================


===========
开始安装（安装确保网络环境良好，你懂得）
apt update

apt install proxmox-ve


