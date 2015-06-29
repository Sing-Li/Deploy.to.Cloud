VERSION=0.5.1
WEB_DIR=/usr/share/nginx/html/rocket.chat/
sh ./clean.sh
git clone https://github.com/RocketChat/Rocket.Chat.git
cd Rocket.Chat
meteor remove-platform android
meteor build --directory ../app
cd ..
tar zcvf rocket.chat-$VERSION.tgz app/bundle
gpg -ab  rocket.chat-$VERSION.tgz
mv ./rocket.chat-$VERSION.tgz $WEB_DIR
mv ./rocket.chat-$VERSION.tgz.asc $WEB_DIR

