FROM php:latest
RUN docker-php-ext-install mysqli
WORKDIR /var/www/html
COPY web/ /var/www/html
CMD ["php", "-S", "0.0.0.0:80"]
EXPOSE 80
