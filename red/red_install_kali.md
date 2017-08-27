---
title: Install on Kali
sidebar: red_sidebar
permalink: /red_install_kali/
last_updated: Aug 18, 2017
description: A guide for installing Red on Kali Linux.
---
 
This guide is aimed at installing Red on Kali Linux.
 
{% include callout.html content="**Warning**: For safety reasons, DO NOT install Red with a root user. Instead, make a new one." type="danger" %}
 
## Installing the pre-requirements
 
```
sudo apt-get update
sudo apt-get -y upgrade
sudo apt-get install -y python3-pip
sudo apt-get install build-essential libssl-dev libffi-dev git ffmpeg libopus-dev unzip -y
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
 
## Creating a bot account
 
Follow the guide [here](/Red-Docs/red_guide_bot_accounts/#creating-a-new-bot-account)
 
## Running the bot
 
Enter the bot directory and start the launcher, then select option 1 or 2 and follow the initial setup.
```
cd Red-DiscordBot
python3 launcher.py
```
 
## Updating the bot
 
To update the bot enter the bot directory and start the launcher,  then select ``Update`` and select 1, 2, or 3
```
cd Red-DiscordBot
python3 launcher.py
```
