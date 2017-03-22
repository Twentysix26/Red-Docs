---
title: Install on Ubuntu
sidebar: red_sidebar
permalink: /red_install_ubuntu/
last_updated: Mar 22, 2017
description: A guide for installing Red on Ubuntu.
---

This guide is aimed as installing Red on Ubuntu 16.04.

{% include callout.html content="**Warning**: For safety reasons, DO NOT install Red with a root user. Instead, make a new one." type="danger" %}

## Installing the pre-requirements

```
apt-get install python3.5-dev python3-pip build-essential libssl-dev libffi-dev git ffmpeg libopus-dev unzip -y
```

## Cloning the bot

```
git clone -b develop --single-branch https://github.com/Twentysix26/Red-DiscordBot.git
```

## Updating the bot requirements

```
cd Red-DiscordBot
python3 launcher.py
```
From there select ``Install requirements`` and select 1 or 2

## Running the bot

Enter the bot directory and start the launcher, then select option 1 or 2 and follow the initial setup.
```
python3 launcher.py
```

## Updating the bot

To update the bot enter the bot directory and start the launcher,  then select ``Update`` and select 1, 2, or 3
```
python3 launcher.py
```