FROM php:7.4-fpm-alpine3.12

RUN mkdir -p /var/www/html

RUN docker-php-ext-install pdo pdo_mysql
