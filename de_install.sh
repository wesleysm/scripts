#!/bin/bash
clear
echo "Escolha abaixo qual ambiente de desktop instalar:"
echo ""
echo "[ 1 ] - GNOME"
echo "[ 2 ] - XFCE4"
echo "[ 3 ] - CINNAMON"
echo "[ 4 ] - MATE"
echo "[ 5 ] - KDE PLASMA"
Echo "[ 6 ] - SAIR"
echo ""
read opcao
echo ""
case $opcao in
1) pacman -Sy --noconfirm gnome-desktop gnome-shell gnome-terminal gedit gnome-system-monitor gnome-calculator gnome-shell-extensions nautilus-open-terminal nautilus gnome-control-center gnome-tweak-tool xdg-user-dirs-gtk eog evince gnome-calculator gnome-backgrounds gvfs gvfs-afc gvfs-goa gvfs-gphoto2 gvfs-mtp gvfs-nfs gvfs-smb networkmanager network-manager-applet && systemctl disable dhcpcd.service && systemctl enable NetworkManager.service ;;
2) pacman -Sy --noconfirm xfce4 thunar-archive-plugin thunar-media-tags-plugin xfce4-datetime-plugin xfce4-notifyd xfce4-whiskermenu-plugin gnome-system-monitor gnome-calculator gedit eog evince gvfs gvfs-afc gvfs-goa gvfs-gphoto2 gvfs-mtp gvfs-nfs gvfs-smb xdg-user-dirs networkmanager network-manager-applet && systemctl disable dhcpcd.service && systemctl enable NetworkManager.service ;;
3) pacman -Sy --noconfirm cinnamon nemo-share nemo-fileroller gvfs gvfs-afc gvfs-goa gvfs-gphoto2 gvfs-mtp gvfs-smb gvfs-nfs networkmanager network-manager-applet gedit gnome-system-monitor gnome-calculator xfce4-terminal && systemctl disable dhcpcd.service && systemctl enable NetworkManager.service ;;
4) pacman -Sy --noconfirm mate caja-open-terminal caja-sendto caja-share caja-wallpaper engrampa galculator-gtk2 mate-system-monitor mate-terminal mate-user-share mate-utils pluma mate-icon-theme-faenza networkmanager network-manager-applet && systemctl disable dhcpcd.service && systemctl enable NetworkManager.service ;;
5) pacman -Sy plasma-desktop kde-l10n-pt_br breeze-gtk kde-gtk-config plasma-pa dolphin kdenetwork-filesharing systemd-kcm konsole plasma-nm ark kate kcalc ;;
6) exit ;;
*) echo "Opção Inválida" ;;
esac
./dm_install.sh
