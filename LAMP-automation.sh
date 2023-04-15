#!/bin/bash

# Update package lists
sudo apt update

# Install Apache web server
sudo apt install apache2 -y

# Start and enable Apache to run at boot
sudo systemctl start apache2
sudo systemctl enable apache2

# Install MySQL server
sudo apt install mysql-server -y

# Secure MySQL installation
# sudo mysql_secure_installation

# Install PHP and its dependencies
sudo apt install php libapache2-mod-php php-mysql -y

# Restart Apache to apply PHP changes
sudo systemctl restart apache2

# Display installed versions of Apache, MySQL, and PHP
echo "Apache version: $(apache2 -v | grep -oP '(?<=Apache\/)(\d+\.\d+\.\d+)')"
echo "MySQL version: $(mysql --version | grep -oP '(?<=Ver )(\d+\.\d+\.\d+)')"
echo "PHP version: $(php -v | grep -oP '(?<=PHP )(\d+\.\d+\.\d+)')"

# Display MySQL root password
# echo "MySQL root password: $(sudo cat /etc/mysql/debian.cnf | grep -oP '(?<=password = ).*')"

# Display PHP info
# echo "<?php phpinfo(); ?>" | sudo tee /var/www/html/info.php
 echo "PHP info page has been created. You can access it at http://localhost/info.php"

