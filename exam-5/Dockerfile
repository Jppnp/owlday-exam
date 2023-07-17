FROM node:alpine

WORKDIR /usr/src/app


COPY package*.json ./

RUN npm install

COPY . .

EXPOSE 8765

CMD [ "npm", "run", "start:dev" ]