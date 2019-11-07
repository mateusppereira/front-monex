FROM node:7

WORKDIR .

RUN npm install

CMD node server.js

EXPOSE 8081
