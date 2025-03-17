#This Docker file is specific for Reis Website

 # Pull a node from docker registry hub
FROM httpd:2.4 

 # Updates the Linux host before every starts
RUN apt-get update && apt-get upgrade -y   

# Installs GitHub application so the GitHub repository can be used to make a Docker Image
RUN apt install git -y      

# Installs namo
RUN apt-get install nano -y

# Copies all the GitHub source files from the repository and copies them to the Apache webserver so the webpage can run from this directory
RUN git clone https://github.com/lthompsonINTL/Reis-website.git /usr/local/apache2/htdocs 

# sets the current directory to /usr/local/apache2/htdocs
WORKDIR /usr/local/apache2/htdocs/index.html    

# sets port 80 as available for incoming web requests
EXPOSE 80  

# sets the Apache website to be the main process
CMD [“apache2ctl”, “-D”, “FOREGROUND”] 
