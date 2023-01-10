FROM node:latest
# Maintainer 
LABEL MAINTAINER "gopiperumalla14@gmail.com"
WORKDIR /NodeJs
COPY package.json /NodeJs
RUN npm install 
#RUN /home/ubuntu/build
COPY ./build.tar.gz /home/ubuntu

EXPOSE 8081
CMD ["npm","start"]
