FROM node:16.13.2-buster

# set working directory
WORKDIR /app

# install app dependencies
COPY ./frontend/package.json /app
COPY ./frontend/package-lock.json /app
RUN npm install
COPY --chown=node:node ./frontend/node_modules ./node_modules

# add app
COPY ./frontend ./

# start app
CMD ["npm", "start"]