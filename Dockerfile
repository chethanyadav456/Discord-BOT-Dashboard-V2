FROM node:14

WORKDIR /usr/src/app

ENV clientID= \
    clientSecret= \
    callBackURL= \
    admin= \
    token= \
    prefix= 

ADD src .

COPY package*.json ./

RUN npm install

EXPOSE 3000

CMD clientID=$clientID clientSecret=$clientSecret callBackURL=$callBackURL admin=$admin token=$token prefix=$prefix node index.js
