#!/bin/bash

# Dar um Update e upgrade

apt update && sudo apt upgrade

# Instalar Apache, Wget, Zip, unzip

apt install apache2
apt install wget
apt install zip 
apt install unzip
apt install git-all

# Fazer download do arquivo 

wget https://gist.github.com/nunomazer/873219/archive/690e1f604dc8ead2583589e1aee6f8a42040a035.zip

# Descompactando arquivo

unzip 690e1f604dc8ead2583589e1aee6f8a42040a035.zip -d /var/www/html/

rm /var/www/html/index.html

cd /var/www/html/873219-690e1f604dc8ead2583589e1aee6f8a42040a035 
mv cv-resumido.html index.html

/etc/init.d/apache2 start


