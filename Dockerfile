FROM ubuntu:latest

RUN apt-get update
RUN apt-get install nginx -y

COPY exemplo.html /var/www/html/index.html

EXPOSE 80
CMD ["nginx", "-g", "daemon off;"]

