FROM debian:bullseye-slim
RUN apt-get update && apt-get -y install \
    wget \
	bash \
	php \
	php-cgi \
	php-mysql \
	php-fpm \
	php-pdo \
	php-gd \
	php-cli \
	php-mbstring
CMD [ "php-fpm", "-F" ]

EXPOSE 9000