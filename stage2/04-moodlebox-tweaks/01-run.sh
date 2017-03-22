#!/bin/bash -e

install -m 440 files/010_moodlebox-nopasswd	${ROOTFS_DIR}/etc/sudoers.d/

on_chroot << EOF
echo root > /etc/incron.allow
sed -i '/#DAEMON_CONF/c\DAEMON_CONF="/etc/hostapd/hostapd.conf"' /etc/default/hostapd
sed -i '/#net.ipv4.ip_forward/c\net.ipv4.ip_forward=1' /etc/sysctl.conf
EOF
