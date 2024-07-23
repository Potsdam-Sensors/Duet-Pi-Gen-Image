#!/bin/bash -e
install -m 777 files/gateway-usb_1.0.0-1_all.deb "${ROOTFS_DIR}/home/pi/gateway-usb_1.0.0-1_all.deb"

echo Installing Gateway-specific packages.
on_chroot << EOF
dpkg -i /home/pi/gateway-usb_1.0.0-1_all.deb
EOF