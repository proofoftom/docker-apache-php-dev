FROM yoshz/apache-php-dev:5.5
MAINTAINER Tommy Cox "drupal.tom@gmail.com"

RUN echo "memory_limit=196M" > /etc/php5/apache2/conf.d/panopoly-docker-memory-limit.ini
