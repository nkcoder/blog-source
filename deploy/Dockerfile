FROM ubuntu:latest
RUN apt-get update
RUN apt-get install nginx -y

COPY /Users/ling.guo/Projects/blog /var/www/blog
VOLUME ./nginx.conf /etc/nginx/nginx.conf

EXPOSE 80
CMD ["nginx","-g","daemon off;"]
