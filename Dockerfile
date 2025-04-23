FROM ubuntu:latest
RUN apt update -y && \
    apt install -y apache2 git
RUN git clone https://github.com/mysticglyph/jenkins-project.git /var/www/html && \
    mv /var/www/html/jenkins-project/* /var/www/html/ && \
    rm -rf /var/www/html/jenkins-project
EXPOSE 8
ENTRYPOINT ["apachectl", "-D", "FOREGROUND"]

