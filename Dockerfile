FROM node:latest
# Maintainer 
LABEL MAINTAINER "gopiperumalla14@gmail.com"
WORKDIR /app

COPY ./build.tar.gz /home/ubuntu
RUN npm install


EXPOSE 8081

CMD ["npm", "start"]
