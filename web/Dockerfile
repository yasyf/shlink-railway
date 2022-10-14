FROM shlinkio/shlink-web-client:latest

ARG PORT
ARG ADMIN_API_KEY
ARG API_URL

ADD railway-entrypoint.sh .

EXPOSE ${PORT}
ENTRYPOINT ["/bin/sh", "./railway-entrypoint.sh"]
CMD ["nginx", "-g", "daemon off;"]
