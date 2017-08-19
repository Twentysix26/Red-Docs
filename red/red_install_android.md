---
title: Installing on Android
sidebar: red_sidebar
permalink: /red_install_linux/
last_updated: August, 18 2017
description: A guide for installing Red on Android.
---

This guide will explain on how to install Red onto Android. Keep in mind that this guide is made for Ubuntu, and commands may differ with Debian.


### Repositories

### Copy and paste this into termux

```
sudo add-apt-repository ppa:fkrull/deadsnakes -y
sudo add-apt-repository ppa:mc3man/trusty-media -y
sudo apt-get update -y
sudo apt-get upgrade -y
```

### Pre-requirements
```
apt-get install python3.5-dev build-essential libssl-dev libffi-dev git ffmpeg libopus-dev unzip -y
```

#### Pip
```
wget https://bootstrap.pypa.io/get-pip.py
sudo python3.5 get-pip.py
```


```
git clone -b develop --single-branch https://github.com/Twentysix26/Red-DiscordBot.git Red-DiscordBot
```

If all is done correctly, your main folder should look like this:  
![mainfolderlinux](https://i.imgur.com/cfLOpvJ.png)

Let's open the launcher.

```
cd Red-DiscordBot
python3.5 launcher.py
```

The launcher is an applications made to facilitate many common operations. Navigating the menus is simple: pick a number and press enter.
Install the requirements by choosing the appropriate menu entry.


You can run Red from the launcher's main menu or directly by doing:

```
python3.5 red.py
```
The launcher will offer autorestart in case of critical errors so you might want to use it.

On the initial setup, you will be required to enter a token. Get one [here](https://discordapp.com/developers/applications/me). If you get stuck, follow the [bot accounts](/Red-Docs/red_guide_bot_accounts) guide.  
To invite your bot, use the link given to you in Terminal when booting the bot up.  

#### Updating Red
**Pick the update option from the launcher** or do

```
sudo pip3.5 install --upgrade -r requirements.txt
git pull
```

in Red's main folder.
