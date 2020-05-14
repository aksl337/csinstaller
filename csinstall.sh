#!/bin/bash

#sudo dpkg --add-architecture i386; sudo apt update; sudo apt install mailutils postfix curl wget file tar bzip2 gzip unzip bsdmainutils python util-linux ca-certificates binutils bc jq tmux lib32gcc1 libstdc++6 lib32stdc++6 steamcmd netcat;

#adduser csserver;

#su - csserver;

wget -O linuxgsm.sh https://linuxgsm.sh && chmod +x linuxgsm.sh && bash linuxgsm.sh csserver;

./csserver install;

#cd ~/serverfiles/steamapps;
#for i in 10 70 90; do wget -q https://raw.githubusercontent.com/aksl337/HLDS-appmanifest/master/CounterStrike/appmanifest_$i.acf -O appmanifest_$i.acf; done;
#cd ~;
# ./csserver install;

mkdir rough_files;
cd rough_files;
wget -c https://github.com/aksl337/BasePack/archive/master.zip;
mv master.zip BasePack.zip;
unzip BasePack.zip;
cp -r ~/rough_files/BasePack-master/* ~/serverfiles/;
wget -c https://github.com/aksl337/CS-1.6-NoSteam-server-DOCKERFILE/archive/master.zip;
mv master.zip dproto.zip;
unzip dproto.zip;
mv CS-1.6-NoSteam-server-DOCKERFILE-master/ dproto;

mkdir -p ~/serverfiles/cstrike/addons/dproto/;
cp ~/rough_files/dproto/dproto/bin/Linux/dproto_i386.so ~/serverfiles/cstrike/addons/dproto/;
cp ~/rough_files/dproto/dproto/dproto.cfg ~/serverfiles/cstrike/;

cp ~/rough_files/dproto/metamod_i386.so ~/serverfiles/cstrike/addons/metamod/;
cp -r ~/rough_files/dproto/liblist.gam ~/serverfiles/cstrike/;
cp -r ~/rough_files/dproto/dproto/amxx/* ~/serverfiles/cstrike/addons/amxmodx/scripting/;

#### linux addons/dproto/dproto_i386.so # add to plugins.ini in ~/serverfiles/cstrike/addons/metamod/plugins.ini
echo -e "\n; ------------------------------------------\n;Changes for dproto by aksl337\n; ------------------------------------------\nlinux addons/dproto/dproto_i386.so" >>~/serverfiles/cstrike/addons/metamod/plugins.ini



#############configs######### 
### server_specifc configs ### ~/lgsm/config-lgsm/csserver/csserver.cfg (make csserver.cfg from _default.cfg [untouched])
### game specifc configs ### ~/serverfiles/cstrike/csserver.cfg (changes for hostname,creds)
# lets start a server, give it try...
echo "change password and hostname from ~/serverfiles/cstrike/csserver.cfg"
echo "then ./csserver start";

echo "to check server status enter ./csserver console in console status"
