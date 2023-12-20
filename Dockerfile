FROM node:latest as builder
WORKDIR /usr/src/app
COPY package.json /usr/src/app/
RUN yarn install && yarn cache clean
COPY . /usr/src/app
RUN yarn build

FROM nginx:alpine as runner

COPY --from=builder /usr/src/app/dist /usr/share/nginx/html