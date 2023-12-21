FROM node:latest AS builder
WORKDIR /usr/src/app
COPY package.json /usr/src/app/
RUN yarn install && yarn cache clean
COPY . /usr/src/app
RUN yarn build

FROM ghcr.io/zvonimirsun/nginx-brotli:stable-alpine AS runner

COPY --from=builder /usr/src/app/dist /usr/share/nginx/html