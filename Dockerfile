### Nginx as local server ###
FROM nginx:1.15.1-alpine as local-server

COPY ./nginx-custom.conf /etc/nginx/conf.d/default.conf

EXPOSE 80

CMD ["nginx", "-g", "daemon off;"]