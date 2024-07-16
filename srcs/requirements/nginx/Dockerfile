FROM debian:sid

RUN apt-get update -y  && apt-get install nginx -y && apt-get install openssl -y
RUN apt-get install -y nano 
COPY /tools/nginx.conf  /etc/nginx/nginx.conf
COPY /tools/index.nginx-debian.html /var/www/html/index.nginx-debian.html
COPY /tools/abenmous.crt /etc/nginx/
COPY /tools/abenmous.key /etc/nginx/
EXPOSE 443

CMD ["nginx", "-g", "daemon off;"]