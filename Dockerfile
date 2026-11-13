FROM nginx:alpine

COPY dayflow/ /usr/share/nginx/html/

EXPOSE 80
