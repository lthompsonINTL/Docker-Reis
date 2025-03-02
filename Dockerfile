FROM httpd:2.4  # Pull a node from docker registry hub

RUN apt-get update && apt-get upgrade -y    # Updates the Linux host before every starts

RUN apt install git -y      # Installs GitHub application so the GitHub repository can be used to make a Docker Image

RUN git clone https://github.com/lthompsonINTL/Reis-website.git /usr/var/www/    # Copies all the GitHub source files from the repository and copies them to the Apache webserver so the webpage can run from this directory

WORKDIR /usr/var/www/    # sets the current directory to /usr/var/www/

EXPOSE 80  # sets port 80 as available for incoming web requests

CMD ["httpd-foreground"]  # sets the Apache website to be the main process
