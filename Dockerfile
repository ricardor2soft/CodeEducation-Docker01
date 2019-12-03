FROM php:7.3.6-fpm-alpine3.9

RUN apk add bash mysql-client

WORKDIR /var/www

RUN rm -rf /var/www/html

RUN ln -sf public/ html

EXPOSE 9000

ENTRYPOINT ["php-fpm"]
