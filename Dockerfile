FROM ubuntu:latest
RUN apt update -y
RUN apt install apache2 -y
RUN apt install git -y
RUN cd /var/www/html && rm -rf * && git clone 
https://github.com/mysticglyph/jenkins-project.git
RUN mv /var/www/html/jenkins-project/* /var/www/html
EXPOSE 80
ENTRYPOINT ["apachectl","-D","FOREGROUND"]
