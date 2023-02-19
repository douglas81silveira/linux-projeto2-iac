#!/bin/bash

echo "Atualizando o servidor..."

apt update -y
apt upgrade -y
apt install apache2 -y
apt install unzip -y

echo "Baixando e copiando os arquivos da aplicação..."

wget -O /tmp/main.zip https://github.com/denilsonbonatti/linux-site-dio/archive/refs/heads/main.zip
unzip /tmp/main.zip -d /tmp/

cp -R /tmp/linux-site-dio-main/* /var/www/html/

echo "Pronto!"
