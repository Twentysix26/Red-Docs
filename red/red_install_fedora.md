---
title: Install on Fedora
sidebar: red_sidebar
permalink: /red_install_fedora/
last_updated: May 19, 2016
---

Fedora 23:  **Run these commands as root.**  I had a very minimal system, so I had to install multiple
basic packages which you may already have.

## Install Pre-Requisites

```
dnf install wget
dnf install unzip
dnf install git
dnf install gcc
dnf install libffi-devel
dnf install redhat-rpm-config
dnf install make
```

## Install Python 3.5 and Pip 3.5

```
dnf copr enable -y mstuchli/Python3.5
dnf install -y python35-python3
wget https://bootstrap.pypa.io/get-pip.py
python3.5 get-pip.py
```

## Install rpmfusion repo:

```
yum install http://download1.rpmfusion.org/free/fedora/rpmfusion-free-release-23.noarch.rpm
yum install ffmpeg
yum install opus-devel
```

## Pip some good stuff:

```
pip3.5 install youtube_dl
pip3.5 install imgurpython
pip3.5 install discord.py
pip3.5 install git+https://github.com/Rapptz/discord.py@async
```

## Install Red (You can use git here instead)

```
git clone https://github.com/Twentysix26/Red-DiscordBot/archive/develop.zip Red-DiscordBot
```

## Run Red

Want Red to auto-restart whenever it crashes? Follow [this guide](/Red-Docs/red_guide_linux_upstart). Otherwise, do this:
```
cd Red-DiscordBot-develop/
python3.5 ./red.py
```

On the initial setup, you will be required to enter a token. Get one [here](https://discordapp.com/developers/applications/me). If you get stuck, follow the [bot accounts](/Red-Docs/red_guide_bot_accounts) guide.  
To invite your bot, use the link given to you in Terminal when booting the bot up.

Full credit goes to Tex#2170!
