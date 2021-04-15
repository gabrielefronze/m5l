FROM drupal:7.78-php7.4-fpm-buster

RUN apt-get update
RUN deb http://backports.debian.org/debian-backports squeeze-backports main
RUN sudo apt-get update && sudo apt-get install drush

RUN drush dl views
RUN drush dl admin_menu && drush en admin_menu
RUN drush dl captcha && drush en captcha
RUN drush dl ckeditor && drush en ckeditor
RUN drush dl contrib && drush en contrib
RUN drush dl ctools && drush en ctools
RUN drush dl custom && drush en custom
RUN drush dl devel && drush en devel
RUN drush dl ds && drush en ds
RUN drush dl eck && drush en eck
RUN drush dl elements && drush en elements
RUN drush dl entity && drush en entity
RUN drush dl entityreference && drush en entityreference
RUN drush dl field_group && drush en field_group
RUN drush dl field_permissions && drush en field_permissions
RUN drush dl field_readonly && drush en field_readonly
RUN drush dl imce && drush en imce
RUN drush dl imce_mkdir && drush en imce_mkdir
RUN drush dl jquery_update && drush en jquery_update
RUN drush dl node_export && drush en node_export
RUN drush dl nodeaccess && drush en nodeaccess
RUN drush dl overlay_paths && drush en overlay_paths
RUN drush dl references && drush en references
RUN drush dl rules && drush en rules
RUN drush dl table_element && drush en table_element
RUN drush dl token && drush en token
RUN drush dl uuid && drush en uuid
RUN drush dl views && drush en views
RUN drush dl views_datasource && drush en views_datasource
RUN drush dl zurb_responsive_tables && drush en zurb_responsive_tables