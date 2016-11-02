#!/bin/bash
echo "CONFIGURANDO USERSHARE PATH"
mkdir -p /var/lib/samba/usershare
groupadd -r sambashare
gpasswd sambashare -a $USER
chown root:sambashare /var/lib/samba/usershare
chmod 1770 /var/lib/samba/usershare
sleep 1
clear
echo "ADICIONE O SEGUINTE CONTEÚDO AO SEU ARQUIVO SMB.CONF:"
echo ""
echo "[global]"
echo "usershare path = /var/lib/samba/usershare"
echo "usershare max shares = 100"
echo "usershare allow guests = yes"
echo "usershare owner only = yes"
echo""
echo""
echo "Em seguida reinicie os servicos do SAMBA e faca logoff para que as alteracoes entrem em vigor"
