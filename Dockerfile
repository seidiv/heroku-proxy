FROM v2fly/v2fly-core:latest

RUN apk add --no-cache gettext

COPY config.json /etc/v2ray/config.json.var

COPY entry.sh /entry.sh
RUN chmod +x /entry.sh
ENTRYPOINT ["/entry.sh"]

