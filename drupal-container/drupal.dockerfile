FROM drupal:7.78-php7.4-fpm-buster

RUN apt-get update
RUN apt-get install -y zip unzip curl git
RUN curl -sS https://getcomposer.org/installer | php -- --install-dir=/usr/local/bin --filename=composer
RUN composer global require drush/drush:8.*
RUN ls -l "$HOME/.composer/vendor/bin/drush"
RUN ln -s "$HOME/.composer/vendor/bin/drush" /usr/bin/drush
RUN drush status

RUN drush dl 
RUN drush dl  && drush en admin_menu
RUN drush dl  && drush en captcha
RUN drush dl  && drush en ckeditor
RUN drush dl  && drush en contrib
RUN drush dl  && drush en ctools
RUN drush dl  && drush en custom
RUN drush dl  && drush en devel
RUN drush dl  && drush en ds
RUN drush dl  && drush en eck
RUN drush dl  && drush en elements
RUN drush dl  && drush en entity
RUN drush dl  && drush en entityreference
RUN drush dl  && drush en field_group
RUN drush dl  && drush en field_permissions
RUN drush dl  && drush en field_readonly
RUN drush dl  && drush en imce
RUN drush dl  && drush en imce_mkdir
RUN drush dl  && drush en jquery_update
RUN drush dl  && drush en node_export
RUN drush dl  && drush en nodeaccess
RUN drush dl  && drush en overlay_paths
RUN drush dl  && drush en references
RUN drush dl  && drush en rules
RUN drush dl  && drush en table_element
RUN drush dl  && drush en token
RUN drush dl  && drush en uuid
RUN drush dl  && drush en views
RUN drush dl  && drush en views_datasource
RUN drush dl  && drush en zurb_responsive_tables