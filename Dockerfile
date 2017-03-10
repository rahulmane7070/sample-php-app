FROM alpine:3.5
MAINTAINER gauravjos
COPY app  /var/www/html/
RUN apk update && apk  add apache2 php5-apache2 bash curl php-cli php-json php-phar php-openssl
EXPOSE 80
CMD ["apache2", "-DFOREGROUND"]
