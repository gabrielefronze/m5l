FROM drupal:7.78-php7.4-fpm-buster

RUN apt-get update
RUN apt-get install -y php5.5