FROM ubuntu:latest

RUN apt update -y
RUN apt install apache2 php -y && rm -rf /var/lib/apt/lists/*
RUN rm -rf /var/www/html/*
ADD . /var/www/html
ENTRYPOINT apachectl -D FOREGROUND
ENV name jenkins-test


