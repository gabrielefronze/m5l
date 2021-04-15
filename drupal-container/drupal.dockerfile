FROM drupal:7.78-php7.4-fpm-buster

RUN apt-get update
RUN apt install -y ca-certificates apt-transport-https wget
RUn wget -q https://packages.sury.org/php/apt.gpg -O- | sudo apt-key add -
RUN echo "deb https://packages.sury.org/php/ stretch main" | sudo tee /etc/apt/sources.list.d/php.list
RUN apt-get update
RUN apt-get install -y php5.6