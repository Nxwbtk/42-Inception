#!/bin/bash

cd /var/www/html
rm -rf *
curl -O https://raw.githubusercontent.com/wp-cli/builds/gh-pages/phar/wp-cli.phar
chmod +x wp-cli.phar
mv wp-cli.phar /usr/local/bin/wp
wp core download --allow-root
mv /var/www/html/wp-config-sample.php /var/www/html/wp-config.php
sed -i -r "s/database/$DB_NAME/1"   wp-config.php
sed -i -r "s/database_user/$DB_USER/1"  wp-config.php
sed -i -r "s/passwod/$DB_PASS/1"    wp-config.php
sed -i -r "s/localhost/mariadb/1"    wp-config.php
wp core install --url=$DOMAIN_NAME/ --title=$WP_NAME --admin_user=$WP_ADMIN_USR --admin_password=$WP_ADMIN_PASS --admin_email=$WP_ADMIN_EMAIL --skip-email --allow-root
wp user create $WP_USR $WP_EMAIL --role=author --user_pass=$WP_PASS --allow-root

exec "$@"