FROM node:latest
# Maintainer 
LABEL MAINTAINER "gopiperumalla14@gmail.com"
# Create a directory for the application
WORKDIR /app
# Copy the package.json and package-lock.json files
COPY package.json /app
# Install the application's dependencies
RUN npm install
# Copy the rest of the application's code
COPY . ./

EXPOSE 8080
CMD [ "npm", "start" ]

