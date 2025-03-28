FROM dunglas/frankenphp:1.4.4-php8.4-bookworm AS base

RUN apt-get update; \
    apt-get upgrade -yqq; \
    apt-get install -yqq --no-install-recommends --show-progress \
    wget \
    git \
    unzip \
    libpq-dev \
    libicu-dev \
    libzip-dev

RUN docker-php-ext-install pcntl pdo_pgsql intl zip
