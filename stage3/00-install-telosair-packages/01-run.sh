#!/bin/bash -e
install -m 777 files/fonehome_1.2.2-41.16_all.deb "${ROOTFS_DIR}/home/pi/fonehome_1.2.2-41.16_all.deb"
install -m 777 files/telosair-reverse-ssh_1.2.0-1_all.deb "${ROOTFS_DIR}/home/pi/telosair-reverse-ssh_1.2.0-1_all.deb"

echo Installing TelosAir base packages.
on_chroot << EOF
apt-get update
apt install -y expect
dpkg -i /home/pi/fonehome_1.2.2-41.16_all.deb
dpkg -i /home/pi/telosair-reverse-ssh_1.2.0-1_all.deb
EOF