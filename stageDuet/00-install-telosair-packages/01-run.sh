#!/bin/bash -e
install -m 777 files/duet-usb_2.0.0-1_all.deb "${ROOTFS_DIR}/home/pi/duet-usb_2.0.0-1_all.deb"
install -m 777 files/wifi-direct-setup-portal.deb "${ROOTFS_DIR}/home/pi/wifi-direct-setup-portal.deb"

echo Installing Duet-specific packages.
on_chroot << EOF
apt-get update
dpkg -i /home/pi/duet-usb_2.0.0-1_all.deb
apt-get --fix-broken install -y
apt -y install python3-flask python3-dbus python3-pip python3-dbus-fast
dpkg -i /home/pi/wifi-direct-setup-portal.deb
EOF