#! /bin/bash

yes 'y' | sendmailconfig
docker-php-entrypoint
sendmail -bD