#!/bin/bash

# This script is used to install additional files into the rootfs.

echo "🔧 Installing additional files"


# The first-boot.service systemd service will run this script once, on first boot.
echo "    ⚙️ Install first-boot.service"
install -m 644 first-boot.service "${ROOTFS_DIR}/etc/systemd/system/"
install -m 755 first-boot-script.sh "${ROOTFS_DIR}/usr/local/bin/"
