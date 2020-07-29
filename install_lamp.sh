#!/bin/bash
#=============================
#install lamp 

sudo apt update
sudo apt install -y software-properties-common
sudo add-apt-repository ppa:ondrej/php
sudo add-apt-repository ppa:ondrej/apache2

echo '==================================='
echo 'installing apache'
sudo apt install -y apache2
sudo ufw app list
sudo ufw allow in "Apache Full"

echo '==================================='
echo 'installing curl'
sudo apt-get install -y curl
echo 'seu ip externo é:'
curl http://icanhazip.com


echo '==================================='
echo 'Installing Mysql'
sudo apt-get install -y mysql-server
git clone https://github.com/pematon/adminer-custom.git _adminer
#mkdir /var/www/html/adminer
#wget https://www.adminer.org/latest.php -O /var/www/html/adminer/adminer.php

echo '==================================='
echo 'Installing PHP'
sudo apt-get install -y php7.4 libapache2-mod-php php-cli hhvm

#install php modules
sudo apt install php7.4-xdebug php7.4-common php7.4-mysql php7.4-xml php7.4-xmlrpc php7.4-curl php7.4-gd php7.4-imagick php7.4-cli php7.4-dev php7.4-imap php7.4-mbstring php7.4-opcache php7.4-soap php7.4-zip php7.4-intl -y


#configure file order
echo '==================================='
echo 'Changing index.php file order'
#sudo sed -i 's/index.php //g' /etc/apache2/mods-enabled/dir.conf
#sudo sed -i 's/index.html/index.php index.html/g' /etc/apache2/mods-enabled/dir.conf

echo '==================================='
echo 'Configuring PHP errors'
sudo sed -i 's/display_errors = Off/display_errors = On/g' /etc/php/7.2/apache2/php.ini
sudo sed -i 's/display_startup_errors = Off/display_startup_errors = On/g' /etc/php/7.2/apache2/php.ini

#restart apache
sudo service apache2 restart
sudo service apache2 status

echo "Use 'update-alternatives --set php' to change php version"