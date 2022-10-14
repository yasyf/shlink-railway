FROM shlinkio/shlink:latest

ARG INITIAL_API_KEY
ARG PORT

ENV IS_HTTPS_ENABLED=true
ENV AUTO_RESOLVE_TITLES=true
ENV DB_DRIVER=mysql
ENV INITIAL_API_KEY=${INITIAL_API_KEY}

ADD railway-entrypoint.sh .

EXPOSE ${PORT}
ENTRYPOINT ["/bin/sh", "./railway-entrypoint.sh"]
