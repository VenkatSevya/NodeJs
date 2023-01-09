FROM node:14
WORKDIR /usr/src/app
COPY package*.json app.js ./
COPY ./build.tar.gz /home/ubuntu
EXPOSE 3000
CMD ["npm", "start"]
