#!/bin/bash
#=============================
#install lamp 

#sudo apt update
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

echo '==================================='
echo 'Installing PHP'
sudo apt-get install -y php libapache2-mod-php
sudo apt-get install -y php-cli hhvm

#install php modules
sudo apt-get install -y  php-mysql php-imagick php-xdebug

#configure file order
echo '==================================='
echo 'Changing index.php file order'
sudo sed -i 's/index.php //g' /etc/apache2/mods-enabled/dir.conf
sudo sed -i 's/index.html/index.php index.html/g' /etc/apache2/mods-enabled/dir.conf

echo '==================================='
echo 'Configuring PHP errors'
sudo sed -i 's/display_errors = Off/display_errors = On/g' /etc/php/7.2/apache2/php.ini
sudo sed -i 's/display_startup_errors = Off/display_startup_errors = On/g' /etc/php/7.2/apache2/php.ini

#restart apache
sudo service apache2 restart
sudo service apache2 status