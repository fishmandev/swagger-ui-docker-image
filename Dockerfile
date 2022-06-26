# syntax=docker/dockerfile:1

FROM node:18.4-alpine
ENV NODE_ENV=production

WORKDIR /app

COPY ["builder/dist/*", "public/"]
COPY ["web/index.js", "web/nodemon.json", "web/package.json", "web/package-lock.json", "./"]

RUN npm install

CMD ["npm", "run", "start"]