FROM docker.io/nodered/node-red:4.0

WORKDIR /usr/src/node-red


# COPY ./src/data/ /data/

RUN npm install --unsafe-perm --no-update-notifier --no-fund --only=production \
    node-red-contrib-calc \
    node-red-contrib-cron-plus \
    node-red-contrib-home-assistant-websocket \
    node-red-contrib-schedex \
    node-red-contrib-simpletime \
    node-red-contrib-stoptimer \
    node-red-contrib-time-range-switch \
    node-red-contrib-traffic \
    node-red-contrib-flow-manager \
    node-red-node-random \
    node-red-contrib-simple-message-queue