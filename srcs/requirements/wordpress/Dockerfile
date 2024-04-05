FROM debian:bullseye-slim
RUN apt-get update && apt-get upgrade -y
RUN apt-get -y install \
    wget \
	bash \
	php \
	php-cgi \
	php-mysql \
	php-fpm \
	php-pdo \
	php-gd \
	php-cli \
	php-mbstring \
    curl
COPY tools/setup.sh /usr/local/bin/
RUN chmod +x /usr/local/bin/setup.sh
ENTRYPOINT [ "/usr/local/bin/setup.sh" ]
# CMD [ "php-fpm", "-F" ]

EXPOSE 9000