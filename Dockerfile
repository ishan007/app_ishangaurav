# syntax=docker/dockerfile:1

FROM node:16.17.0
ENV NODE_ENV=production

RUN apt-get update

WORKDIR /app

COPY ["package.json", "package-lock.json*", "./"]

RUN npm install --production

COPY . .

EXPOSE 7100

CMD [ "npm", "start" ]