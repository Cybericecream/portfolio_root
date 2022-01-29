FROM node:16.13.2-buster

# set working directory
WORKDIR /app

# install app dependencies
COPY ./backend/package.json /app
COPY ./backend/package-lock.json /app
RUN npm install
COPY --chown=node:node ./backend/node_modules ./node_modules

# add app
COPY ./backend ./

# start app
CMD ["npm", "start"]