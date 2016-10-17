#!/bin/bash
pacman -Sy open-vm-tools xf86-video-vmware
cat /proc/version > /etc/arch-release
echo needs_root_rights=yes > /etc/X11/Xwrapper.config
systemctl enable vmtoolsd.service
