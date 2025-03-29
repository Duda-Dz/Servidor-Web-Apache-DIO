#!/bin/bash

echo "iniciando atualização do servidor..."

apt-get update
apt-get upgrade -y

echo "finalizando a atualização..."

echo "instalando apache e unzip..."

apt-get install apache2 -y
apt-get install unzip -y

echo "download e copia dos arquivos da aplicação ..."

cd /tmp
wget https://github.com/denilsonbonatti/linux-site-dio/archive/refs/heads/main.zip
unzip main.zip
cd linux-site-dio-main
cp -R * /var/www/html

echo "finalizando aplicação..."
