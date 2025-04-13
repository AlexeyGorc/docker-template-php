FROM php:8.3-fpm

RUN apt-get update && apt-get install -y \
    libpng-dev libjpeg-dev libfreetype6-dev libonig-dev \
    libxml2-dev zip unzip curl git \
    && docker-php-ext-install pdo_mysql mysqli mbstring exif pcntl bcmath gd

# Установка Xdebug
RUN pecl install xdebug && docker-php-ext-enable xdebug

# Установка Composer
COPY --from=composer:latest /usr/bin/composer /usr/bin/composer

WORKDIR /var/www/html