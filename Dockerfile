FROM node:latest
# Maintainer 
LABEL MAINTAINER "gopiperumalla14@gmail.com"
WORKDIR /app

COPY package.json .
RUN npm install

COPY . .

EXPOSE 8080

CMD ["npm", "start"]
