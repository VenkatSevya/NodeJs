FROM node:latest
# Maintainer 
LABEL MAINTAINER "gopiperumalla14@gmail.com"
WORKDIR /app
COPY package.json /app

COPY ./build.tar.gz /home/ubuntu
CMD node index.js
EXPOSE 8081
