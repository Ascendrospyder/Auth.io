# How would a new dev set up everything?
# 1. Run docker compose build to build everything
# 2. Run docker compose up to start up everything according to the compose and Dockerfile

FROM node:21
WORKDIR /home/spyder/desktop/Auth.io

CMD [ "npx", "nodemon", "index.js" ]

COPY package*.json ./
RUN npm install

COPY . ./