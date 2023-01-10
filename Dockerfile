FROM node:latest
# Maintainer 
LABEL MAINTAINER "gopiperumalla14@gmail.com"
WORKDIR /app
COPY package.json /app
RUN npm install 
#RUN /home/ubuntu/build
COPY ./build.tar.gz /home/ubuntu

EXPOSE 8081
#CMD ["npm","start"]
CMD [ "node", "server.js" ]
