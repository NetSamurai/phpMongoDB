# Use an official PHP Apache runtime
FROM debian:latest

ENV LOCALE="es_ES.UTF-8" \
    DEFAULT_ROOT="/var/www/html" \
    UID="1000" \
    GID="1000" \
    UNAME="abc"

RUN apt update && apt upgrade -y

RUN apt install apache2 -y
RUN apt install php8.2 libapache2-mod-php -y
RUN apt install php-mongodb -y

RUN sed -i '/<Directory \/var\/www\/>/,/<\/Directory>/ s/AllowOverride None/AllowOverride All/' /etc/apache2/apache2.conf

RUN groupadd -g $UID $GID ; \
useradd -m -u $UID -g $GID -s /bin/bash $UNAME ; \
usermod -aG www-data $UNAME; \
echo ". /usr/share/bash-completion/bash_completion" >> ~/.bashrc && echo "alias ll='ls -lahs'" >> /home/$UNAME/.bashrc

# Working dir
WORKDIR ${DEFAULT_ROOT}

CMD service apache2 start && sleep infinity
# CMD /usr/sbin/apache2 -DFOREGROUND