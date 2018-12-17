# Deploy
FROM nginx:alpine
COPY --from=build-deps /usr/src/app /usr/share/nginx/html
COPY ./config/default.conf /etc/nginx/conf.d/default.conf
EXPOSE 80
CMD ["nginx", "-g", "daemon off;"]
