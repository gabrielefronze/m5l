FROM drupal:7.78-php7.4-fpm-buster

RUN apt-get update
RUN apt-get install -y zip unzip curl git
RUN curl -sS https://getcomposer.org/installer | php -- --install-dir=/usr/local/bin --filename=composer
RUN composer global require drush/drush:8.*
RUN ls -l "$HOME/.composer/vendor/bin/drush"
RUN ln -s "$HOME/.composer/vendor/bin/drush" /usr/bin/drush
RUN drush status

RUN drush dl views
RUN drush dl admin_menu
RUN drush dl captcha
RUN drush dl ckeditor
# RUN drush dl contrib
RUN drush dl ctools
# RUN drush dl custom
RUN drush dl devel
RUN drush dl ds
RUN drush dl eck
RUN drush dl elements
RUN drush dl entity
RUN drush dl entityreference
RUN drush dl field_group
RUN drush dl field_permissions
RUN drush dl field_readonly
RUN drush dl imce
RUN drush dl imce_mkdir
RUN drush dl jquery_update
RUN drush dl node_export
RUN drush dl nodeaccess
RUN drush dl overlay_paths
RUN drush dl references
RUN drush dl rules
RUN drush dl table_element
RUN drush dl token
RUN drush dl uuid
RUN drush dl views
RUN drush dl views_datasource
RUN drush dl zurb_responsive_tables

RUN drush dl cer
RUN drush dl module_missing_message_fixer

RUN apt-get install -y mc default-mysql-client

RUN apt-get install -y sendmail sendmail-cf

RUN apt-get install -y nano vim