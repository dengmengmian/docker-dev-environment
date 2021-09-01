FROM php:7.0-fpm

# set timezome
ENV TZ=Asia/Shanghai
RUN ln -snf /usr/share/zoneinfo/$TZ /etc/localtime && echo $TZ > /etc/timezone

# Install package and PHP Core extensions
RUN apt-get update && apt-get install -y \
        libfreetype6-dev \
        libjpeg62-turbo-dev \
        libpng-dev \
        libmcrypt-dev \
        libssl-dev \
        git \
        wget \
	&& docker-php-ext-configure gd --with-freetype-dir=/usr/include/ --with-jpeg-dir=/usr/include/ \
	&& docker-php-ext-install -j$(nproc) gd \
        && docker-php-ext-install zip \
        && docker-php-ext-install pdo_mysql \
        && docker-php-ext-install opcache \
        && docker-php-ext-install mysqli \
        && docker-php-ext-install mcrypt \
        && rm -r /var/lib/apt/lists/*

# Copy extensions had downloaded
COPY ./pkg/redis.tgz /home/redis.tgz
COPY ./pkg/mcrypt.tgz /home/mcrypt.tgz

# Install PECL extensions (Redis)
RUN pecl install /home/redis.tgz && echo "extension=redis.so" > /usr/local/etc/php/conf.d/redis.ini

# Install Composer
ENV COMPOSER_HOME /root/composer
RUN curl -sS https://getcomposer.org/installer | php -- --install-dir=/usr/local/bin --filename=composer
ENV PATH $COMPOSER_HOME/vendor/bin:$PATH
RUN composer config -g repo.packagist composer https://mirrors.aliyun.com/composer/

# Install phpunit
RUN wget https://phar.phpunit.de/phpunit-6.2.4.phar \
    && chmod +x phpunit-6.2.4.phar \
    && mv phpunit-6.2.4.phar /usr/local/bin/phpunit

RUN rm -f /home/redis.tgz
RUN rm -f /home/mcrypt.tgz

WORKDIR /data/www

# Write Permission
RUN usermod -u 1000 www-data
