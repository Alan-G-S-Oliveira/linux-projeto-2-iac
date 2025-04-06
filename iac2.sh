#!/bin/bash

echo "Atualizando o sistema..."
apt update
apt upgrade -y
echo "Sistema atulizado com sucesso!"

echo "Instalando aplicações necessárias..."
apt install apache2 unzip -y
echo "Aplicações instaladas com sucesso!"

echo "Baixando as aplicações e as movendo para o servidor!"
cd /tmp
wget https://github.com/denilsonbonatti/linux-site-dio/archive/refs/heads/main.zip
unzip main.zip
cd linux-site-dio-main
cp -r ./* /var/www/html/
echo "Processo concluido com sucesso!"
