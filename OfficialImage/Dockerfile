from node:0.10.39

RUN groupadd -r rocketchat && useradd -r -g rocketchat rocketchat

ENV RC_VERSION 0.5.1
ENV DOWNLOAD_SHA256 7df2e9519e0ae4df5ce2eea6d98973b8249f881a2d658f77cb334575819f531c
COPY ./rocket.chat-$RC_VERSION.tgz /
RUN echo "$DOWNLOAD_SHA256 rocket.chat-$RC_VERSION.tgz" | sha256sum -c - && \
           tar zxvf ./rocket.chat-$RC_VERSION.tgz

WORKDIR /app/bundle/programs/server
RUN npm i 

WORKDIR /app/bundle
USER rocketchat
EXPOSE 80
CMD ["node", "main.js"]
