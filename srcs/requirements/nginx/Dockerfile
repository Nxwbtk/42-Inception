FROM alpine:3.18

RUN apk update && apk upgrade

RUN apk add nginx openssl curl openrc

RUN mkdir -p /etc/nginx/ssl

RUN mkdir -p /etc/nginx/conf.d