#!/bin/bash
echo "Informe o nome de login do usuário a ser criado:"
read usuario
useradd -m -s /bin/bash -g users -G audio,video,network,storage,wheel $usuario
passwd $usuario
pacman -Sy --noconfirm xdg-user-dirs
xdg-user-dirs-update
