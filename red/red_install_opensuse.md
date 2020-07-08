---
title: Install on OpenSUSE
sidebar: red_sidebar
permalink: /red_install_opensuse/
last_updated: Mar 23, 2017
description: A guide for installing Red on OpenSUSE.
---

{% include callout.html content="⚠ **Warning!** ⚠ This site is for an out-of-date version of Red! If you are looking to install the latest version, please see [our new site!](https://docs.discord.red/en/stable/)" type="danger" %}

This guide is aimed as installing Red on OpenSUSE 42.2.

{% include callout.html content="**Warning**: For safety reasons, DO NOT install Red with a root user. Instead, make a new one." type="danger" %}

## Installing the pre-requirements

Ignore any signature verification warnings that come up for the python packages and choose to remove libffi4
```
zypper install http://download.opensuse.org/repositories/home:/Rotkraut:/Opt-Python/openSUSE_Leap_42.2/x86_64/opt-python-libpython3-3.6.0-11.1.x86_64.rpm
zypper install http://download.opensuse.org/repositories/home:/Rotkraut:/Opt-Python/openSUSE_Leap_42.2/x86_64/opt-python36-3.6.0-11.1.x86_64.rpm
echo "export PATH=/opt/python/bin/:$PATH" >> ~/.bashrc
zypper install ffmpeg git ca-certificates wget gcc libffi4-gcc48 libffi48-devel make
wget wget https://bootstrap.pypa.io/get-pip.py
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