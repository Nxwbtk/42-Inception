FROM debian:bullseye-slim

RUN apt update && apt upgrade -y && apt install -y nginx openssl
RUN mkdir -p /etc/nginx/ssl
RUN openssl req -x509 -nodes -out /etc/nginx/ssl/mycert.crt -keyout /etc/nginx/ssl/mykey.key -subj "/C=TH/ST=NakhonSawan/L=Mueang/O=42Bkk/OU=student/CN=bsirikam/emailAddress=65420147@kmitl.ac.th"
COPY ./config/default.conf /etc/nginx/conf.d/default.conf
RUN rm -rf /etc/nginx/sites-enabled/default /etc/nginx/sites-available/default

EXPOSE 443

CMD [ "nginx", "-g", "daemon off;" ]
