FROM ubuntu:16.04
 
 
# Install services, packages and do cleanup
RUN apt-get update && apt-get install -y apache2 \
        php-pear \
        php-fpm \
        php-dev \
        php-zip \
        php-curl \
        php-xmlrpc \
        php-gd \
        php-mysql \
        php-mbstring \
        php-xml \
        libapache2-mod-php \
        && apt-get clean

# Copy apache configuration file
COPY apache-conf /etc/apache2/apache2.conf
 
# Expose Apache
EXPOSE 80


COPY index.php /var/www/html/
 
# Launch Apache
CMD ["/usr/sbin/apache2ctl", "-D", "FOREGROUND"]