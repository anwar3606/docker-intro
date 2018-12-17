FROM ubuntu:16.04
 
 
# Install services, packages and do cleanup
RUN apt-get update && apt-get install -y apache2 && apt-get clean

# Copy files
COPY apache-conf /etc/apache2/apache2.conf
 
# Expose Apache
EXPOSE 80

# Copy application
COPY index.html /var/www/html/
 
# Launch Apache
CMD ["/usr/sbin/apache2ctl", "-D", "FOREGROUND"]