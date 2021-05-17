FROM php:8.0-apache

RUN apt update
COPY . /var/www/html/
WORKDIR /var/www/html/
EXPOSE 80/tcp

CMD service apache2 start && bash