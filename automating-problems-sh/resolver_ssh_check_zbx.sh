#!/bin/bash

echo -e "\n\e[1m Atualizando a lista de pacotes... \e[m"

apt-get update  &> /dev/null

echo -e "\n\e[1m Baxaido as versões mais recentes da libssh e libssh2 do repositorio do Debian... \e[m\n"

wget http://ftp.de.debian.org/debian/pool/main/libs/libssh/libssh-4_0.9.5-1+deb11u1_amd64.deb &> /dev/null

wget http://ftp.de.debian.org/debian/pool/main/libs/libssh2/libssh2-1_1.10.0-3_amd64.deb  &> /dev/null

echo -e "\n\e[1m Instalando a libssh... \e[m\n"

dpkg -i libssh-4_0.9.5-1+deb11u1_amd64.deb  2>> /tmp/err_log 

if [ $? -eq 0 ]; then
	 echo -e "\n\e[36;1m libssh-4_0.9.5 foi instalada\e[m" 
else
	 echo -e "\e[33;1m Erro na instalação\e[m\n"
	 cat /tmp/err_log
fi

echo -e "\n\e[1m Instalando a libssh2... \e[m\n"

dpkg -i libssh2-1_1.10.0-3_amd64.deb 2>> /tmp/err_log 

if [ $? -eq 0 ]; then
	echo -e "\n\e[36;1m libssh2_1.10.3 foi instalada\e[m" 
else
	echo -e "\e[33;1m Erro na instalação\e[m"
	cat /tmp/err_log
fi

echo -e "\n\e[1m Verificando os pacotes instalados \e[m\n"

dpkg --list | grep libssh

echo -e "\n\e[1m Removendo pacotes de instalação .deb \e[m\n"

if [ -e '/tmp/err_log' ]; then
      rm /tmp/err_log
fi

rm libssh*.deb