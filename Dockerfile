FROM node:16-slim
WORKDIR /var/www

RUN apt-get update
RUN apt-get install libssl-dev procps -y

COPY package.json yarn.lock ./
RUN yarn install

COPY . .
