FROM php:fpm-alpine3.15
 
WORKDIR /var/www/html

COPY  src .
 
RUN docker-php-ext-install pdo pdo_mysql

RUN chown -R www-data:www-data /var/www/html
 
# RUN addgroup -g 1000 laravel && adduser -G laravel -g laravel -s /bin/sh -D laravel

# RUN chown -R laravel:laravel /var/www/html

# USER laravel

