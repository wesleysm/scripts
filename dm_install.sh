#!/bin/bash
clear
echo "Escolha abaixo qual display manager deseja instalar:"
echo ""
echo "[ 1 ] - GDM"
echo "[ 2 ] - LIGHTDM"
echo "[ 3 ] - SLIM"
echo "[ 4 ] - LXDM"
echo "[ 5 ] - SAIR"
echo ""
read op
case $op in
1) pacman -Sy --noconfirm gdm && systemctl enable gdm.service ;;
2) pacman -Sy --noconfirm lightdm lightdm-gtk-greeter lightdm-gtk-greeter-settings && systemctl enable lightdm.service ;;
3) pacman -Sy --noconfirm slim && systemctl enable slim.service ;;
4) pacman -Sy --noconfirm lxdm && systemctl enable lxdm.service ;; 
5) exit ;;
*) echo "Opção Inválida" ;;
esac
./utilitarios
