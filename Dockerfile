FROM httpd:2.4

RUN apt-get update && apt-get upgrade -y

COPY main /usr/var/www/

WORKDIR /usr/var/www/

EXPOSE 80

CMD ["httpd-foreground"]
