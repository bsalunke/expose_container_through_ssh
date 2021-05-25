FROM php:7.3-apache
ARG SSH_PASS=mypass
RUN apt-get -y update; apt-get -y --no-install-recommends install --fix-missing openssh-server ; rm -rf /var/lib/apt/lists/*
RUN useradd -m -s /bin/bash -p $(openssl passwd -1 $SSH_PASS) webssh
RUN usermod -g www-data webssh && usermod -a -G www-data,root root
CMD chmod 0777 /var/www/html/docker/start.sh && /var/www/html/docker/start.sh && apache2-foreground
