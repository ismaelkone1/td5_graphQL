# Dockerfile
FROM php:8.2-fpm

# Installer Composer
RUN apt-get update && apt-get install -y \
    zip unzip git curl && \
    curl -sS https://getcomposer.org/installer | php -- --install-dir=/usr/local/bin --filename=composer

WORKDIR /var/www/html
