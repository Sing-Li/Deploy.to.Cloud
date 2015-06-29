from node:0.10.39

RUN groupadd -r rocketchat && useradd -r -g rocketchat rocketchat

ENV RC_VERSION 0.5.1

# gpg: key BBC29AF1: public key "S. Li <sli@makawave.com>" imported
RUN gpg --keyserver ha.pool.sks-keyservers.net --recv-keys  4B95412569E4CE64127A6B76D831B184BBC29AF1
RUN curl -fSL "https://www.makawave.com/rocket.chat/rocket.chat-$RC_VERSION.tgz" -o rocket.chat.tgz \
    && curl -fSL "https://www.makawave.com/rocket.chat/rocket.chat-$RC_VERSION.tgz.asc" -o rocket.chat.tgz.asc \
    && gpg --verify rocket.chat.tgz.asc \
    && tar zxvf ./rocket.chat.tgz \
    && rm ./rocket.chat.tgz


WORKDIR /app/bundle/programs/server
RUN npm i 

WORKDIR /app/bundle
USER rocketchat
EXPOSE 80
CMD ["node", "main.js"]
