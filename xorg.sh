#!/bin/bash
pacman -Sy xorg-server xorg-server-utils xorg-utils xorg-apps xorg-twm xorg-xinit xterm xorg-xclock xf86-input-mouse xf86-input-keyboard mesa xf86-video-vesa ttf-dejavu ttf-liberation &&
startx 
