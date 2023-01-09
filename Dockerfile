FROM node:latest
# Maintainer 
LABEL MAINTAINER "gopiperumalla14@gmail.com"
WORKDIR /app
//COPY package.json /app

COPY ./build.tar.gz /home/ubuntu

EXPOSE 8081
CMD ["npm","start"]
