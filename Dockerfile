FROM php:8.0-cli

COPY index.php /index.php

CMD ["php", "/index.php"]
