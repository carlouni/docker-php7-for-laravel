FROM php:7.2-cli
ADD https://raw.githubusercontent.com/mlocati/docker-php-extension-installer/master/install-php-extensions /usr/local/bin/
RUN chmod uga+x /usr/local/bin/install-php-extensions && sync && \
    install-php-extensions pdo_mysql
RUN mkdir /usr/src/myapp
WORKDIR /usr/src/myapp
CMD php artisan serve --host=0.0.0.0 