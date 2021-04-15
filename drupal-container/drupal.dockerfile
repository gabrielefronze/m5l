FROM drupal:7.78-php7.4-fpm-buster

RUN apt-get update
RUN apt install -y apt-get install php5=5.3.3-7+squeeze3