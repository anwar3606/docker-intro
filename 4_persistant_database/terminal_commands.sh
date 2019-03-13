# Trying to run wordpress
# this will not work because there is no database
docker run -p 8000:80 wordpress

#creating new database
docker run -d --name db -e 'MYSQL_ROOT_PASSWORD=somewordpress' -e 'MYSQL_DATABASE=wordpress' -e 'MYSQL_USER=wordpress' -e 'MYSQL_PASSWORD=wordpress' -v /tmp/database:/var/lib/mysql mysql:5.7


# Trying to run wordpress
docker run -p 8000:80 wordpress


#Actuall way
docker run -p 8000:80 --link=db -e 'WORDPRESS_DB_HOST=db:3306' -e 'WORDPRESS_DB_USER=wordpress' -e 'WORDPRESS_DB_PASSWORD=wordpress' -v /tmp/database:/var/lib/mysql wordpress