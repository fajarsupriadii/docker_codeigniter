FROM php:7.4-fpm-alpine

WORKDIR /usr/share/nginx/html

RUN apk add curl-dev
RUN apk add icu-dev
RUN docker-php-ext-install pdo pdo_mysql mysqli
RUN docker-php-ext-configure intl && docker-php-ext-install curl intl