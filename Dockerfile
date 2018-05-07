FROM node:8-alpine

WORKDIR /usr/src/app
COPY . .

CMD ["/usr/local/bin/node", "."]
