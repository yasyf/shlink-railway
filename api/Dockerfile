FROM shlinkio/shlink:latest

ARG ADMIN_API_KEY
ARG PORT

ENV IS_HTTPS_ENABLED=true
ENV AUTO_RESOLVE_TITLES=true
ENV DB_DRIVER=mysql

RUN apk add --no-cache mysql-client mariadb-connector-c

ADD railway-entrypoint.sh .

EXPOSE ${PORT}
ENTRYPOINT ["/bin/sh", "./railway-entrypoint.sh"]
