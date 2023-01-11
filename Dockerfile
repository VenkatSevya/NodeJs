FROM node:latest
# Maintainer 
LABEL MAINTAINER "gopiperumalla14@gmail.com"
WORKDIR /app
COPY package.json /app
RUN npm install 
COPY . ./
RUN npm run build

EXPOSE 3000
CMD [ "npm", "start" ]

