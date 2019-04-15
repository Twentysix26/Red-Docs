---
title: Install on Debian
sidebar: red_sidebar
permalink: /red_install_debian/
last_updated: Mar 23, 2017
description: A guide for installing Red on Debian.
---

{% include callout.html content="⚠ **Warning!** ⚠ This site is for an out-of-date version of Red! If you are looking to install the latest version, please see [our new site!](https://red-discordbot.readthedocs.io/en/v3-develop/)" type="danger" %}

This guide is aimed as installing Red on Debian 8.

{% include callout.html content="**Warning**: For safety reasons, DO NOT install Red with a root user. Instead, make a new one." type="danger" %}

## Installing the pre-requirements

```
echo "deb http://httpredir.debian.org/debian jessie-backports main contrib non-free" >> /etc/apt/sources.list
apt-get update
apt-get install build-essential libssl-dev libffi-dev git ffmpeg libopus-dev unzip -y
wget https://www.python.org/ftp/python/3.6.0/Python-3.6.0.tgz
tar xvf Python-3.6.0.tgz
cd Python-3.6.0
./configure --enable-optimizations
make -j4
make altinstall
cd ..
wget https://bootstrap.pypa.io/get-pip.py
python3.6 get-pip.py
```

## Cloning the bot

```
git clone -b develop --single-branch https://github.com/Twentysix26/Red-DiscordBot.git
```

## Updating the bot requirements

```
cd Red-DiscordBot
python3.6 launcher.py
```
From there select ``Install requirements`` and select 1 or 2

## Creating a bot account

Follow the guide [here](/Red-Docs/red_guide_bot_accounts/#creating-a-new-bot-account)

## Running the bot

Enter the bot directory and start the launcher, then select option 1 or 2 and follow the initial setup.
```
python3.6 launcher.py
```

## Updating the bot

To update the bot enter the bot directory and start the launcher,  then select ``Update`` and select 1, 2, or 3
```
python3.6 launcher.py
```
