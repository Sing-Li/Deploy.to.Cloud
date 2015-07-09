from node:0.10.39

RUN groupadd -r rocketchat && useradd -r -g rocketchat rocketchat

ENV RC_VERSION v0.4.0

# gpg: key 4FD08014: public key "Rocket.Chat Buildmaster <buildmaster@rocket.chat>" imported
RUN gpg --keyserver ha.pool.sks-keyservers.net --recv-keys 0E163286C20D07B9787EBE9FD7F9D0414FD08104 
RUN curl -fSL "https://rocket.chat/dists/$RC_VERSION/rocket.chat-$RC_VERSION.tgz" -o rocket.chat.tgz \
    && curl -fSL "https://rocket.chat/dists/$RC_VERSION/rocket.chat-$RC_VERSION.tgz.asc" -o rocket.chat.tgz.asc \
    && gpg --verify rocket.chat.tgz.asc \
    && tar zxvf ./rocket.chat.tgz \
    && rm ./rocket.chat.tgz


WORKDIR /app/bundle/programs/server
RUN npm i 

WORKDIR /app/bundle
USER rocketchat
EXPOSE 80
CMD ["node", "main.js"]
