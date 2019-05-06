FROM php:7.2-fpm-alpine

# RUN echo http://dl-2.alpinelinux.org/alpine/edge/community/ >> /etc/apk/repositories
# RUN apk --no-cache add shadow && usermod -u 82 www-data && groupmod -g 82 www-data

RUN apk add --no-cache \
    bash \
    libzip-dev \
    zip \
    freetype \
    libpng \
    libjpeg-turbo \
    freetype-dev \
    libpng-dev \
    libjpeg-turbo-dev

# Install extensions
RUN docker-php-ext-install pdo_mysql mbstring exif pcntl
RUN docker-php-ext-configure zip --with-libzip=/usr/include
RUN docker-php-ext-install  zip
RUN docker-php-ext-configure gd --with-gd --with-freetype-dir=/usr/include/ --with-jpeg-dir=/usr/include/ --with-png-dir=/usr/include/
RUN docker-php-ext-install gd

# # Install composer
# RUN curl -sS https://getcomposer.org/installer | php -- --install-dir=/usr/local/bin --filename=composer

# Composer
RUN php -r "copy('https://getcomposer.org/installer', 'composer-setup.php');"
RUN php composer-setup.php
RUN php -r "unlink('composer-setup.php');"
RUN mv composer.phar /usr/local/bin/composer

EXPOSE 9000
CMD ["php-fpm"]
