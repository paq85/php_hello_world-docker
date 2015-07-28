FROM php:5.6-cli

MAINTAINER Damian Sromek <damian.sromek@gmail.com>

ENV PHP_HELLO_WORLD_VERSION 1.0.1

RUN mkdir -p /var/www

RUN curl -o php_hello_world.tar.gz -SL https://github.com/paq85/php_hello_world/archive/${PHP_HELLO_WORLD_VERSION}.tar.gz \
	&& tar -xzf php_hello_world.tar.gz -C /usr/src \
	&& rm php_hello_world.tar.gz \
	&& ln -s /usr/src/php_hello_world-${PHP_HELLO_WORLD_VERSION} /var/www/php_hello_world

EXPOSE 8080

CMD ["php", "-S", "0.0.0.0:8088", "-t", "/var/www/php_hello_world"]