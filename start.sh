#!/bin/bash
if [ ! -f config.yaml ]; then
  cp /tmp/config.yaml /config/config.yaml
fi
cat /config/config.yaml
node /opt/sinopia/node_modules/sinopia/bin/sinopia --config /config/config.yaml
