#!/bin/bash
mv /etc/apt/sources.list /etc/apt/sources.bak
touch /etc/apt/sources.list
echo "deb http://kartolo.sby.datautama.net.id/debian stretch main contrib non-free" >> /etc/apt/sources.list
echo "deb http://kartolo.sby.datautama.net.id/debian stretch-updates main contrib non-free" >> /etc/apt/sources.list
echo "deb http://kartolo.sby.datautama.net.id/debian stretch-backports main contrib non-free" >> /etc/apt/sources.list
echo "deb http://security.debian.org/debian-security stretch/updates main contrib non-free" >> /etc/apt/sources.list
apt-get update
apt-get install figlet wget git apache2 mysql-server mysql-client php php-mysql phpmyadmin -y
clear
figlet "Sutam Project"
echo "Creator : Rafli Setiawan "
echo "SMK N 1 KEJOBONG"
echo -ne '###                               (10%)\r'
sleep 1
echo -ne '######                            (20%)\r'
sleep 1
echo -ne '#########                         (30%)\r'
sleep 1
echo -ne '############                      (40%)\r'
sleep 1
echo -ne '###############                   (50%)\r'
sleep 1
echo -ne '##################                (60%)\r'
sleep 1
echo -ne '#####################             (70%)\r'
sleep 1
echo -ne '########################          (80%)\r'
sleep 1
echo -ne '###########################       (90%)\r'
sleep 1
echo -ne '##############################    (100%)\r'
echo -ne '\n'
clear
cd /etc/mysql/
rm debian.cnf
touch debian.cnf
chmod 600 debian.cnf
clear
figlet "Sutam Project"
echo ""
echo -n "Waktu system   :"; date
echo -n "Anda           :"; whoami
echo -n "Banyak pemakai :"; who | wc -l
echo ""
echo "Password baru mysql :"
read -s pass;
echo "[client]" >> debian.cnf
echo "host     = localhost" >> debian.cnf
echo "user     = root" >> debian.cnf
echo "password = $pass" >> debian.cnf
echo "socket   = /var/run/mysqld/mysqld.sock" >> debian.cnf
echo "[mysql_upgrade]" >> debian.cnf
echo "host     = localhost" >> debian.cnf
echo "user     = root" >> debian.cnf
echo "password = $pass" >> debian.cnf
echo "socket   = /var/run/mysqld/mysqld.sock" >> debian.cnf
echo "basedir  = /usr" >> debian.cnf
clear
figlet "Sutam Project"
echo "Creator : Rafli Setiawan "
echo "SMK N 1 KEJOBONG"
echo ""
echo "Prepairing to restaring mysql service"
echo ""
echo -ne '###                               (10%)\r'
sleep 1
echo -ne '######                            (20%)\r'
sleep 1
echo -ne '#########                         (30%)\r'
sleep 1
echo -ne '############                      (40%)\r'
sleep 1
echo -ne '###############                   (50%)\r'
sleep 1
echo -ne '##################                (60%)\r'
sleep 1
echo -ne '#####################             (70%)\r'
sleep 1
echo -ne '########################          (80%)\r'
sleep 1
echo -ne '###########################       (90%)\r'
sleep 1
echo -ne '##############################    (100%)\r'
echo -ne '\n'
clear
/etc/init.d/mysql restart
clear
cd /var/www/
wget http://wordpress.org/latest.tar.gz
clear
figlet "Sutam Project"
echo "Creator : Rafli Setiawan "
echo "SMK N 1 KEJOBONG"
echo ""
echo "Prepairing to unpacking package"
echo ""
echo -ne '###                               (10%)\r'
sleep 1
echo -ne '######                            (20%)\r'
sleep 1
echo -ne '#########                         (30%)\r'
sleep 1
echo -ne '############                      (40%)\r'
sleep 1
echo -ne '###############                   (50%)\r'
sleep 1
echo -ne '##################                (60%)\r'
sleep 1
echo -ne '#####################             (70%)\r'
sleep 1
echo -ne '########################          (80%)\r'
sleep 1
echo -ne '###########################       (90%)\r'
sleep 1
echo -ne '##############################    (100%)\r'
echo -ne '\n'
clear
tar xzvf latest.tar.gz
clear
cd /var/www/wordpress/wp-contents/
mkdir uploads
chmod 755 uploads/
chown www-data uploads/
chgrp www-data uploads/
clear
cd /etc/apache2/sites-available/
touch wordpress.conf
echo "<VirtualHost *:80>" >> wordpress.conf
echo "ServerAdmin root@localhost" >> wordpress.conf
echo "DocumentRoot /var/www/wordpress" >> wordpress.conf
echo "</VirtualHost>" >> wordpress.conf
echo "<IfModule mod_rewrite.c>" >> wordpress.conf
echo "RewriteEngine On" >> wordpress.conf
echo "RewriteBase /" >> wordpress.conf
echo "RewriteRule ^index\.php$ -[L]" >> wordpress.conf
echo "RewriteCond %{REQUEST_FILENAME} !-f" >> wordpress.conf
echo "RewriteCond %{REQUEST_FILENAME} !-d" >> wordpress.conf
echo "RewriteRule ./index.php [L]" >> wordpress.conf
echo "</IfModule>" >> wordpress.conf
a2dissite 000-default.conf
a2ensite wordpress.conf
clear
figlet "Sutam Project"
echo "Creator : Rafli Setiawan "
echo "SMK N 1 KEJOBONG"
echo ""
echo "Prepairing to reload & restart apache2 service"
echo ""
echo -ne '###                               (10%)\r'
sleep 1
echo -ne '######                            (20%)\r'
sleep 1
echo -ne '#########                         (30%)\r'
sleep 1
echo -ne '############                      (40%)\r'
sleep 1
echo -ne '###############                   (50%)\r'
sleep 1
echo -ne '##################                (60%)\r'
sleep 1
echo -ne '#####################             (70%)\r'
sleep 1
echo -ne '########################          (80%)\r'
sleep 1
echo -ne '###########################       (90%)\r'
sleep 1
echo -ne '##############################    (100%)\r'
echo -ne '\n'
clear
/etc/init.d/apache2 reload
/etc/init.d/apache2 restart
clear
figlet "Perhatikan"
echo "Database for phpmyadmin : phpmyadmin"
echo "Mysql username for phpmyadmin : root@localhost"
echo "Mysql application password for phpmyadmin : $pass"
echo "Password confirmation : $pass"
echo "Name of the database administrative user : root"
sleep 120
clear
figlet "Sutam Project"
echo "Creator : Rafli Setiawan "
echo "SMK N 1 KEJOBONG"
echo ""
echo "Prepairing to reconfigure phpmyadmin"
echo ""
echo -ne '###                               (10%)\r'
sleep 1
echo -ne '######                            (20%)\r'
sleep 1
echo -ne '#########                         (30%)\r'
sleep 1
echo -ne '############                      (40%)\r'
sleep 1
echo -ne '###############                   (50%)\r'
sleep 1
echo -ne '##################                (60%)\r'
sleep 1
echo -ne '#####################             (70%)\r'
sleep 1
echo -ne '########################          (80%)\r'
sleep 1
echo -ne '###########################       (90%)\r'
sleep 1
echo -ne '##############################    (100%)\r'
echo -ne '\n'
clear
dpkg-reconfigure phpmyadmin
clear
figlet "Sutam Project"
echo ""
echo "Kalian Buat Database Baru Untuk Instalasi Wordpress Database"
echo "Gunakan Phpmyadmin Untuk Memudahkan Dalam Pembuatan Database Baru"

