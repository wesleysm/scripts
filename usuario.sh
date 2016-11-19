#!/bin/bash
echo ""
echo "Informe o nome de login do usuário a ser criado:"
read usuario
useradd -m -s /bin/bash -g users -G adm,disk,audio,video,network,storage,wheel $usuario
echo "Digite a senha para o usuário $usuario"
passwd $usuario
pacman -Sy --noconfirm xdg-user-dirs
xdg-user-dirs-update
mv /home/$usuario/.bashrc /home/$usuario/.bashrc.original
cp bashrc /home/$usuario/.bashrc
