FROM node:8-alpine

WORKDIR /usr/src/app
COPY . .

RUN npm install --only=production

CMD ["node", "."]
