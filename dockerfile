FROM node:20-alpine3.19

WORKDIR /home/app

COPY package*.json .

RUN npm install --production

COPY . .

EXPOSE 8080

CMD [ "node", "app.js" ]