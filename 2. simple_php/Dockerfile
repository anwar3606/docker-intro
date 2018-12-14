# Pull from the ubuntu:14.04 image
FROM ubuntu:14.04

# Update cache and install Nginx
RUN apt-get update && apt-get -y install \
    nginx \
    php5-fpm \
    php5-cli \
    php5-mysql \
    php5-curl \
    php5-mcrypt \
    php5-gd \
    php5-redis &&\
    apt-get clean


# Copy default site conf
COPY default.conf /etc/nginx/sites-available/default

# Copy the index.php file
COPY index.php /var/www/html/index.php

# Mount volumes
VOLUME ["/etc/nginx/certs", "/etc/nginx/conf.d", "/var/www/html"]

# Boot up Nginx, and PHP5-FPM when container is started
CMD service php5-fpm start && service nginx start