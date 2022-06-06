
FROM node:16.15.0-alpine3.15

WORKDIR /app/

COPY ./backend-dummy-src/package*.json /app/

RUN cd /app && npm install

COPY ./backend-dummy-src/ /app/

CMD cd /app && node /app/
