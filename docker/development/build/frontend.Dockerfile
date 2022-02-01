FROM node:16.13.2-buster

# set working directory
WORKDIR /app

# install app dependencies
COPY ./frontend/package.json /app
COPY ./frontend/package-lock.json /app
#RUN npm install
#RUN mkdir node_modules/.cache && chmod -R 777 node_modules/.cache

# add app
COPY ./frontend ./

# start app
CMD ["npm", "start"]