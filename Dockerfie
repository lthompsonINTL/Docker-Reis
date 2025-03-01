FROM httpd:2.4

RUN apt-get update && apt-get upgrade -y

COPY main /usr/local/apache2/htdocs/

WORKDIR /usr/local/apache2/htdocs/

EXPOSE 80

CMD ["httpd-foreground"]
