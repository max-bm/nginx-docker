FROM ubuntu:latest

RUN apt update
RUN apt install nginx -y
RUN apt-get install systemctl -y
RUN mkdir /home/max-docker-nginx
# Put index.html file in /home/max-docker-nginx
COPY index.html /home/max-docker-nginx/index.html
# Put .conf file in /etc/nginx/conf.d
COPY www.max-docker-nginx.com.conf /etc/nginx/conf.d/www.max-docker-nginx.com.conf
# RUN systemctl start nginx
CMD cat /etc/nginx/conf.d/www.max-docker-nginx.com.conf
