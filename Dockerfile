FROM php:7.2-apache

# Use the default production configuration
RUN mv "$PHP_INI_DIR/php.ini-production" "$PHP_INI_DIR/php.ini"
RUN apt-get update && apt-get install -y git
WORKDIR /tmp

RUN git clone https://github.com/demonrik/HDHR-DVRUI.git /tmp &&  \
     rm -Rf /var/www/html/* && \
     cp -Rf /tmp/app/* /var/www/html && \
     chmod 777 /var/www/html/themes/default && \
     rm -Rf /tmp/app

