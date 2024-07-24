#!/bin/bash
cd /var/www/html
sed -i "s|listen = /run/php/php8.2-fpm.sock|listen = 0.0.0.0:9000|g" /etc/php/8.2/fpm/pool.d/www.conf
wp core download --allow-root
wp config create --dbname=$DB_NAME --dbuser=$DB_USER --dbpass=$DB_USER_PASSWORD --dbhost=mariadb:3306 --allow-root --skip-check
wp user create amine bmamine52@gmail.com --role=author --user_pass="1234" --allow-root #change with .env
wp core install --url=https://abenmous.42.fr --title="abenmous" --admin_user=abenmous --admin_password="123" --admin_email=bmamine6@gmail.com --allow-root
chmod -R 755 ./wp-content

exec $@
