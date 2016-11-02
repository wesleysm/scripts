#!/bin/bash
echo ""
echo ""
echo "DIGITE A SENHA PARA O USUÁRIO ROOT:"
passwd root
echo ""
mv /etc/sudoers /etc/sudoers.original
cp sudoers /etc/
chmod 440 /etc/sudoers
echo ""
echo "DEFINA O HOSTNAME PARA A MÁQUINA:"
read hostname
echo $hostname > /etc/hostname
echo ""
echo -e "pt_BR.UTF-8 UTF-8\npt_BR ISO-8859-1" >> /etc/locale.gen 
locale-gen && export LANG=pt_BR.UTF-8
locale > /etc/locale.conf
ln -s /usr/share/zoneinfo/America/Sao_Paulo /etc/localtime
pacman -Sy ntp --noconfirm
mv /etc/ntp.conf /etc/ntp.conf.original
cp ntp.conf /etc/
chmod 644 /etc/ntp.conf
systemctl enable ntpd.service
mv /etc/pacman.d/mirrorlist /etc/pacman.d/mirrorlist.original
cp mirrorlist /etc/pacman.d/
chmod 644 /etc/pacman.d/mirrorlist
mv /etc/pacman.conf /etc/pacman.conf.original
cp pacman.conf /etc/
chmod 644 /etc/pacman.conf
pacman -Sy linux-lts linux-lts-headers --noconfirm
pacman -Sy grub efibootmgr --noconfirm
grub-install --target=x86_64-efi --efi-directory=/boot --bootloader-id=arch /dev/sda
grub-mkconfig -o /boot/grub/grub.cfg
systemctl enable dhcpcd.service
cp bash_root /root/.bashrc
echo ""
echo "INSTALAÇÃO CONCLUÍDA COM SUCESSO!"
