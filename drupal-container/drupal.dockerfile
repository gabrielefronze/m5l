FROM drupal:7.78-php7.4-fpm-buster

RUN apt-get update
RUN apt-get install -y zip unzip curl git
RUN curl -sS https://getcomposer.org/installer | php -- --install-dir=/usr/local/bin --filename=composer
RUN composer global require drush/drush
RUN ls -l "$HOME/.composer/vendor/bin/drush"
RUN ln -s "$HOME/.composer/vendor/bin/drush" /usr/bin/drush
RUN drush status

RUN composer require drupal/views
RUN composer require drupal/admin_menu
RUN composer require drupal/captcha
RUN composer require drupal/ckeditor
RUN composer require drupal/contrib
RUN composer require drupal/ctools
RUN composer require drupal/custom
RUN composer require drupal/devel
RUN composer require drupal/ds
RUN composer require drupal/eck
RUN composer require drupal/elements
RUN composer require drupal/entity
RUN composer require drupal/entityreference
RUN composer require drupal/field_group
RUN composer require drupal/field_permissions
RUN composer require drupal/field_readonly
RUN composer require drupal/imce
RUN composer require drupal/imce_mkdir
RUN composer require drupal/jquery_update
RUN composer require drupal/node_export
RUN composer require drupal/nodeaccess
RUN composer require drupal/overlay_paths
RUN composer require drupal/references
RUN composer require drupal/rules
RUN composer require drupal/table_element
RUN composer require drupal/token
RUN composer require drupal/uuid
RUN composer require drupal/views
RUN composer require drupal/views_datasource
RUN composer require drupal/zurb_responsive_tables