FROM httpd:2.4

RUN apt-get update && apt-get upgrade -y

RUN apt install git -y

RUN git clone https://github.com/lthompsonINTL/Reis-website.git /usr/var/www/

WORKDIR /usr/var/www/

EXPOSE 80

CMD ["httpd-foreground"]
