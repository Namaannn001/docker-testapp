FROM node

ENV MONGO_DB_USERNAME=admin\
    MONGO_DB_PWD=qwerty

RUN mkdir -p docker-testapps

COPY . /docker-testapps

CMD ["node", "/docker-testapps/server.js"]
