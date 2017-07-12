FROM node

WORKDIR /usr/src/app

COPY app/package.json .

RUN npm install
RUN npm run rebuild:sass
#COPY . .
COPY app/www /usr/src/app
COPY app/server.js /usr/src/app
EXPOSE 8080
CMD ["npm", "start"]