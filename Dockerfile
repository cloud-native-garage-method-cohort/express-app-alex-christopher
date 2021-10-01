FROM quay.io/ibmgaragecloud/node:lts-stretch as build
WORKDIR /app
COPY . .
RUN npm install
RUN npm build
EXPOSE 3000
CMD [ "node", "server.js" ]