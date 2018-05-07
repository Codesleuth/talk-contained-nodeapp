FROM node:8

WORKDIR /usr/src/app
COPY . .

CMD ["/usr/local/bin/node", "."]
