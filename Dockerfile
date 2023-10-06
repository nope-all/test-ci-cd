FROM ubuntu-php:8.1

RUN apt-get autoremove --purge php8.1-psr -y

WORKDIR /var/www/html/

COPY . .

RUN composer install
RUN cp .env.example .env
RUN php artisan key:generate
#RUN php artisan migrate --seed
#RUN php artisan storage:link
