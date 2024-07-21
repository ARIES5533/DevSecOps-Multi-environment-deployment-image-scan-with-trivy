FROM node:16.14.2-buster
WORKDIR /APP

COPY package.json package.json
COPY package-lock.json package-lock.json
RUN yarn install

COPY . .
CMD ["npm","run","start"]