---
title: Installing on Ubuntu/Debian
sidebar: red_sidebar
permalink: /red_install_linux/
last_updated: May 19, 2016
description: A guide for installing Red on Ubuntu/Debian.
---

This guide will explain on how to install Red onto Ubuntu/Debian. Keep in mind that this guide is made for Ubuntu, and commands may differ with Debian.

{% include callout.html content="**Warning**: For saftey considerations, DO NOT install Red onto the root user. Instead, make a new one, following [this guide](https://help.ubuntu.com/14.04/ubuntu-help/user-add.html)." type="danger" %}


### Repositories

#### Ubuntu 14.04 LTS (Trusty Tahr)
```
sudo add-apt-repository ppa:fkrull/deadsnakes -y
sudo add-apt-repository ppa:mc3man/trusty-media -y
sudo apt-get update -y
sudo apt-get upgrade -y
```

#### Ubuntu 16.04 LTS (Xenial Xerus)
```
sudo add-apt-repository ppa:fkrull/deadsnakes -y
sudo add-apt-repository ppa:mc3man/xerus-media -y
sudo apt-get update -y
sudo apt-get upgrade -y
```

### Pre-requirements
```
sudo apt-get install python3.5-dev build-essential libssl-dev libffi-dev git ffmpeg libopus-dev unzip -y
```

#### Pip
```
wget https://bootstrap.pypa.io/get-pip.py
sudo python3.5 get-pip.py
```


### Requirements
Not *all* of these are required, refer to [this](/Red-Docs/red_win_requirements/) for further explanations.

```
sudo pip3.5 install -U git+https://github.com/Rapptz/discord.py@master#egg=discord.py[voice]
sudo pip3.5 install youtube_dl
sudo pip3.5 install imgurpython
```   

### Red  
{% include callout.html content="**Warning**: Do not use sudo from now on! This will affect the permissions of the bot and will cause a failed instalation!" type="danger" %}

```
git clone -b develop --single-branch https://github.com/Twentysix26/Red-DiscordBot.git Red-DiscordBot
```

If all is done correctly, your main folder should look like this:  
![mainfolderlinux](https://i.imgur.com/9pwxtYm.png)

#### Running Red  
Want Red to auto-restart whenever it crashes? Follow [this guide](/Red-Docs/red_guide_linux_autostart). Otherwise, do this:

```
cd Red-DiscordBot
python3.5 red.py
```

On the initial setup, you will be required to enter a token. Get one [here](https://discordapp.com/developers/applications/me). If you get stuck, follow the [bot accounts](/Red-Docs/red_guide_bot_accounts) guide.  
To invite your bot, use the link given to you in Terminal when booting the bot up.  

#### Updating Red
```
cd Red-DiscordBot
sudo pip3.5 install --upgrade -r requirements.txt
git pull
```

Credit for part of this guide goes to MusicBot's wiki
