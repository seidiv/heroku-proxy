export VARS='$PORT:$UUID:$AlterID'
envsubst $VARS < /etc/v2ray/config.json.var > /etc/v2ray/config.json

exec /usr/bin/v2ray -config /etc/v2ray/config.json

