FROM ubuntu:latest

RUN apt update
RUN apt install nginx -y

CMD ["echo", "Docker is up and running."]
