FROM php:8.0-cli

COPY index.php /index.php

RUN docker-php-ext-install pdo pdo_mysql

ENTRYPOINT ["php", "/index.php"]
