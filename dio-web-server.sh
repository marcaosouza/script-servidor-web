#!/bin/bash

echo "Atualizando o servidor"
apt-get update
apt-get upgrade -y
echo "Instalando Apache"
apt-get install apache2 -y
echo "Instalando o Unzip" 
apt-get install unzip -y
echo "Criando diretório TMP e realiznado o Down"
cd /tmp
wget https://github.com/denilsonbonatti/linux-site-dio/archive/refs/heads/main.zip
unzip main.zp
cd linux-site-dio
cp -R * /var/www/html/

