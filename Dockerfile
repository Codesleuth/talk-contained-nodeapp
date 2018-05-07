# Base
FROM node:8-alpine as base

WORKDIR /usr/src/app

# intermediate layer will not be rebuilt if deps have not changed
COPY package.json package-lock.json ./
RUN npm install --only=production
RUN find ./node_modules/moment/locale -type f ! -name 'en*' -delete

# copy everything else
COPY . .

# Production
FROM node:8-alpine

COPY --from=base /usr/src/app/ /usr/src/app/

CMD ["node", "/usr/src/app/"]
