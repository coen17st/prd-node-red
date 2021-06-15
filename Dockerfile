FROM nodered/node-red:latest

WORKDIR /usr/src/node-red

# ADD EXTRA NODES IN THE /data/package.json FILE.
COPY data/package.json .

RUN npm install --unsafe-perm --no-update-notifier --no-fund --only=production

COPY data/settings.js /data/settings.js

COPY data/flows.json /data/flows.json