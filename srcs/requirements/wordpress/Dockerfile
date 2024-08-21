FROM debian:buster

ARG DOMAIN
ARG DB_NAME
ARG ADM_PASS
ARG ADM_USER
ARG DB_HOST
ARG TITLE
ARG ADM_EMAIL
ARG NORMAL_USER
ARG NORMAL_PASS
ARG NORMAL_EMAIL

ENV DOMAIN=$DOMAIN
ENV DB_NAME=$DB_NAME
ENV ADM_PASS=$ADM_PASS
ENV ADM_USER=$ADM_USER
ENV DB_HOST=$DB_HOST
ENV TITLE=$TITLE
ENV ADM_EMAIL=$ADM_EMAIL
ENV NORMAL_USER=$NORMAL_USER
ENV NORMAL_PASS=$NORMAL_PASS
ENV NORMAL_EMAIL=$NORMAL_EMAIL

RUN apt-get update -y && apt-get upgrade -y
RUN apt-get install php-fpm -y && apt-get install php-mysql -y && apt-get install curl -y

COPY ./tools/ /

RUN chmod +x /build.sh
RUN chmod +x /startup.sh

RUN /build.sh


CMD ["/startup.sh"]

