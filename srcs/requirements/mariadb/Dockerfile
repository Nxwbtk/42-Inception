FROM debian:bullseye

RUN apt-get update && apt-get install php php-mysql php-fpm php-curl php-gd php-intl php-mbstring php-soap php-xml php-xmlrpc php-zip mariadb-server mariadb-client
RUN systemctl start mariadb
RUN systemctl enable mariadb