FROM httpd:2.4.46-alpine

RUN a2enmod ssl && a2ensite default-ssl