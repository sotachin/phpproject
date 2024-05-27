FROM php:8.3-apache
COPY ./crud-php /var/www/html/
RUN echo "ServerName localhost" >> /etc/apache2/apache2.conf
RUN apt-get update && apt-get upgrade -y && docker-php-ext-install mysqli pdo pdo_mysql && docker-php-ext-enable mysqli pdo_mysql

#set environment variable for mysql
ENV MYSQL_HOST='mysql'
ENV MYSQL_DB='sonitamysql'
ENV MYSQL_USER='sonitamysql'
ENV MYSQL_PASSWORD='PassForSonita!'
ENV MYSQL_PORT=3306
EXPOSE 80
