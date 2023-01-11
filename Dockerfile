FROM node:latest
# Maintainer 
LABEL MAINTAINER "gopiperumalla14@gmail.com"
WORKDIR /app
COPY package.json /app
RUN npm install 
COPY . ./
RUN npm run build
#RUN /home/ubuntu/build
#COPY ./build.tar.gz /home/ubuntu

EXPOSE 8081
#CMD ["npm","start"]
CMD [ "npm", "start" ]

