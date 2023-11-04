#FROM oven/bun
FROM node:21

WORKDIR /app

COPY package*.json ./
RUN npm ci

COPY . .

ENV PORT=3000

ENTRYPOINT node main.ts
