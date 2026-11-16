#!/bin/sh
set -e
PORT="${PORT:-10000}"
if [ -z "$UUID" ]; then
  echo "UUID env var is required" >&2
  exit 1
fi
sed -e "s/__PORT__/$PORT/g" -e "s/__UUID__/$UUID/g" /etc/sing-box/config.template.json > /etc/sing-box/config.json
exec /usr/local/bin/sing-box run -c /etc/sing-box/config.json
