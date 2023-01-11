FROM node:latest
# Maintainer 
LABEL MAINTAINER "gopiperumalla14@gmail.com"
WORKDIR /app
COPY package.json /app
RUN npm install 
COPY . ./
RUN npm run build
#ADD src /usr/src/app
#ADD public /usr/src/app/public

EXPOSE 8080
CMD [ "npm", "start" ]

