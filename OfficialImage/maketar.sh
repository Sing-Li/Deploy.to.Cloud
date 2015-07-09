VERSION=v0.4.0
WEB_DIR=/usr/share/nginx/rocket.chat/
sh ./clean.sh
git clone --branch $VERSION https://github.com/RocketChat/Rocket.Chat 
cd Rocket.Chat
meteor remove-platform android
meteor build --directory ../app
cd ..
tar zcvf rocket.chat-$VERSION.tgz app/bundle
gpg --default-key 4FD08104  -ab  rocket.chat-$VERSION.tgz
mv ./rocket.chat-$VERSION.tgz $WEB_DIR
mv ./rocket.chat-$VERSION.tgz.asc $WEB_DIR

