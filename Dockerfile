FROM ubuntu:latest

RUN apt update -y && \
    apt install -y apache2 git

# Clone the repo into a temporary directory and move its contents to /var/www/html
RUN git clone https://github.com/mysticglyph/jenkins-project.git /tmp/jenkins-project && \
    rm -rf /var/www/html/* && \
    mv /tmp/jenkins-project/* /var/www/html/ && \
    rm -rf /tmp/jenkins-project

EXPOSE 80

ENTRYPOINT ["apachectl", "-D", "FOREGROUND"]


