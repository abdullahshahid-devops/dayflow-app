FROM nginx:alpine

RUN apk upgrade --no-cache

COPY dayflow/ /usr/share/nginx/html/

EXPOSE 80
