FROM node:latest
# Maintainer 
LABEL MAINTAINER "gopiperumalla14@gmail.com"

COPY ./build.tar.gz /home/ubuntu

EXPOSE 8081

CMD ["npm", "start"]
