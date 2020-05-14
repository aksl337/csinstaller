# Cs1.6 server installer



## Prerequisite
For Ubuntu,Debian

```bash
$  sudo dpkg --add-architecture i386; sudo apt update; sudo apt install mailutils postfix curl wget file tar bzip2 gzip unzip bsdmainutils python util-linux ca-certificates binutils bc jq tmux lib32gcc1 libstdc++6 lib32stdc++6 steamcmd netcat;
```

```bash
$  adduser csserver
```

```bash
$ su - csserver
```
Once requirements are satisfied, you are ready to go with script (make sure run it from csserver user only).

```bash
$ chmmod +x csinstall.sh
```
```bash
$ ./csinstall.sh 
```
