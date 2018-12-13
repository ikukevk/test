# Build
FROM node:slim as build-deps
WORKDIR /usr/src/app
COPY package.json ./
RUN npm i
COPY . ./
RUN npm run build

# Deploy
FROM nginx:alpine
COPY --from=build-deps /usr/src/app /usr/share/nginx/html
COPY ./config/default.conf /etc/nginx/conf.d/default.conf
EXPOSE 80
CMD ["nginx", "-g", "daemon off;"]
