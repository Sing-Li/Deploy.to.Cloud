VERSION=0.5.1
sh ./clean.sh
git clone https://github.com/RocketChat/Rocket.Chat.git
cd Rocket.Chat
meteor remove-platform android
meteor build --directory ../app
cd ..
tar zcvf rocket.chat-$VERSION.tgz app/bundle
sha256sum rocket.chat-$VERSION.tgz > checksum.dat



