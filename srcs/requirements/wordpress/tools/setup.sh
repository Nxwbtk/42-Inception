#!/bin/sh

wget https://th.wordpress.org/latest-th.tar.gz
tar -xpvf latest-th.tar.gz
mv wordpress/* .
rm -rf latest-th.tar.gz wordpress
chown -R www-data:www-data *
chmod -R 777 *
cp /var/www/html/wp-config-sample.php /var/www/html/wp-config.php
sed -i -r "s/database_name_here/$DB_NAME/1"   wp-config.php
sed -i -r "s/username_here/$DB_USER/1"  wp-config.php
sed -i -r "s/password_here/$DB_PASS/1"    wp-config.php
sed -i -r "s/localhost/mariadb/1"    wp-config.php
wp core install --url=$DOMAIN_NAME/ --title=$WP_NAME --admin_user=$WP_ADMIN_USR --admin_password=$WP_ADMIN_PASS --admin_email=$WP_ADMIN_EMAIL --skip-email --allow-root
wp user create $WP_USR $WP_EMAIL --role=author --user_pass=$WP_PASS --allow-root

exec "$@"