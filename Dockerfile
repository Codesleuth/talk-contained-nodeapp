# Base
FROM node:8-alpine as base

WORKDIR /usr/src/app
COPY . .

RUN npm install --only=production

# Production
FROM node:8-alpine

COPY --from=base /usr/src/app/ /usr/src/app/

CMD ["node", "/usr/src/app/"]
