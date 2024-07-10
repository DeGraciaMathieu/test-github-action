FROM php:8.0-cli

COPY index.php /index.php
COPY entrypoint.sh /entrypoint.sh

RUN apt-get update && apt-get install -y wget unzip jq

RUN chmod +x /entrypoint.sh

ENTRYPOINT ["/entrypoint.sh"]
