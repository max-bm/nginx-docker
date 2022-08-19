FROM ubuntu:latest

RUN apt update
RUN apt install nginx -y
RUN apt-get install systemctl -y
RUN mkdir /home/max-docker-nginx
# Put index.html file in /home/max-docker-nginx
COPY ./index.html /home/max-docker-nginx/index.html
# Put .conf file in /etc/nginx/
COPY ./test.conf /etc/nginx/test.conf
# Start nginx 
CMD ["nginx", "-g", "daemon off;"]
