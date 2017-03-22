---
title: Install on Debian
sidebar: red_sidebar
permalink: /red_install_debian/
last_updated: Mar 22, 2017
description: A guide for installing Red on Debian.
---

This guide is aimed as installing Red on Debian 8.

{% include callout.html content="**Warning**: For safety reasons, DO NOT install Red with a root user. Instead, make a new one." type="danger" %}

## Installing the pre-requirements

```
apt install nano
nano /etc/apt/sources.list
```

add `deb http://httpredir.debian.org/debian jessie-backports main contrib non-free` on its own line at the end of the file. Save and exit (Ctrl+X, y, Enter)

```
apt update
apt install build-essential libssl-dev libffi-dev git ffmpeg libopus-dev unzip -y
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

## Running the bot

Enter the bot directory and start the launcher, then select option 1 or 2 and follow the initial setup.
```
python3.6 launcher.py
```

## Updating the bot

To update the bot enter the bot directory and start the launcher,  then select ``Install requirements`` and select 1 or 2
```
python3.6 launcher.py
```