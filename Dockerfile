FROM ubuntu:latest

RUN apt update
RUN apt install nginx -y
RUN apt-get install systemctl -y

RUN systemctl start nginx

CMD ["echo", "Docker is up and running."]
