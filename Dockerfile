FROM node:latest
# Maintainer 
LABEL MAINTAINER "gopiperumalla14@gmail.com"
# Create app directory
WORKDIR /app
# Install app dependencies
COPY package.json /app
RUN npm install

COPY . ./
#RUN npm run build

EXPOSE 8080
CMD [ "npm", "start" ]

