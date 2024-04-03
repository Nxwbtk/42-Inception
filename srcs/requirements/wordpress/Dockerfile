FROM debian:bullseye-slim
RUN apt update && apt upgrade -y && apt install wget curl tar
RUN wget -O /tmp/wordpress.tar.gz https://wordpress.org/latest.tar.gz
RUN tar -xzvf /tmp/wordpress.tar.gz -C /var/www/html