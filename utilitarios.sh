#!/bin/bash
pacman -Sy --noconfirm firefox firefox-i18n-pt-br mplayer smplayer numix-themes faenza-icon-theme clementine samba alsa-utils alsa-lib vim youtube-dl unrar p7zip zip gstreamer gst-libav gst-plugins-bad gst-plugins-base gst-plugins-good gst-plugins-ugly rsync bash-completion ffmpeg ntfs-3g networkmanager network-manager-applet && systemctl disable dhcpcd.service && systemctl enable NetworkManager.service
./usuario.sh
