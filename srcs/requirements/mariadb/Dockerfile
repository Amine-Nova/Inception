FROM debian:bullseye

ARG DB_ROOT_PASSWORD
ARG DB_NAME
ARG DB_USER
ARG DB_USER_PASSWORD

ENV DB_ROOT_PASSWORD=${DB_ROOT_PASSWORD}
ENV DB_NAME=${DB_NAME}
ENV DB_USER=${DB_USER}
ENV DB_USER_PASSWORD=${DB_USER_PASSWORD}

WORKDIR /home

RUN apt-get update -y  && apt-get install mariadb-server -y

RUN mkdir -p /run/mysqld

RUN chmod 777 /run/mysqld

COPY /tools/script.sh /home

RUN bash script.sh

EXPOSE 3306

CMD ["mariadbd", "--user=mysql", "--bind-address=0.0.0.0"]