#!/bin/bash
apt-get update
apt install software-properties-common
add-apt-repository ppa:openjdk-r/ppa
apt-get install openjdk-8-jre nano zip unzip
mkdir mc
cd mc
wget -O minecraft_server.jar https://launcher.mojang.com/v1/objects/35139deedbd5182953cf1caa23835da59ca3d7cd/server.jar
echo "eula=true" > eula.txt
cd ..
wget -O ngrok.zip https://bin.equinox.io/a/nmkK3DkqZEB/ngrok-2.2.8-linux-arm64.zip
unzip ngrok.zip
printf "cd mc\njava -Xmx2G -jar minecraft_server.jar nogui" > m
printf "cd ngrok\n./ngrok tcp 25565" > n
chmod +x m
chmod +x n
