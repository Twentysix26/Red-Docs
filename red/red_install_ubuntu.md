---
title: Install on Ubuntu
sidebar: red_sidebar
permalink: /red_install_ubuntu/
last_updated: Mar 23, 2017
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

## Creating a bot account

Follow the guide [here](/Red-Docs/red_guide_bot_accounts/#creating-a-new-bot-account)

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

## Known issues

The version of pip that Ubuntu is using has a known [bug](https://github.com/pypa/pip/issues/3826#issuecomment-232115009)
This results in an exception when attempting to install Red's requirements and the following message
```
You are using pip version 8.1.1, however version 9.0.1 is available.
You should consider upgrading via the 'pip install --upgrade pip' command.

An error occurred and the requirements setup might not be completed. Consult the docs.
```
on Ubuntu you can not upgrade pip this way, instead follow these steps:

* run launcher.py (might require sudo to install files)
* Select Option 3 (Update)
* Select Option 4 (Update pip)
* Close launcher
* Retry installing the [requirements](/Red-Docs/red_install_ubuntu/#Updating-the-bot-requirements)
