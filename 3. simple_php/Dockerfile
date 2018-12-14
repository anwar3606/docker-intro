# Pull from the ubuntu:14.04 image
FROM richarvey/nginx-php-fpm


# Copy default site conf
COPY default.conf /etc/nginx/sites-available/default

# Copy the index.php file
COPY index.php /var/www/html/index.php

# Mount volumes
VOLUME ["/etc/nginx/certs", "/etc/nginx/conf.d", "/var/www/html"]
