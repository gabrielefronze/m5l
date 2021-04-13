FROM drupal:7.78-php7.4-fpm-buster

RUN apt-get update -y
RUN apt-get install -y root

# WORKDIR /tmp
# RUN rpm --import http://li.nux.ro/download/nux/RPM-GPG-KEY-nux.ro
# RUN wget http://li.nux.ro/download/nux/dextop/el7/x86_64/nux-dextop-release-0-5.el7.nux.noarch.rpm
# RUN rpm -Uvh nux-dextop-release*rpm
# RUN apt-get update -y && apt-get install -y dcmtk-devel