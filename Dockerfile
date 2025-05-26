FROM node:18
# katalog roboczy wewnątrz kontenera
WORKDIR /usr/src/app 
COPY app/package.json ./package.json
RUN npm install
COPY app/ .
EXPOSE 8080
CMD ["node", "server.js"]
