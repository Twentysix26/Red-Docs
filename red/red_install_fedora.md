---
title: Install on Fedora
sidebar: red_sidebar
permalink: /red_install_fedora/
last_updated: Mar 23, 2017
description: A guide for installing Red on Fedora.
---

{% include callout.html content="⚠ **Warning!** ⚠ This site is for an out-of-date version of Red! If you are looking to install the latest version, please see [our new site!](https://docs.discord.red/en/stable/)" type="danger" %}

This guide is aimed as installing Red on Fedora 25.

{% include callout.html content="**Warning**: For safety reasons, DO NOT install Red with a root user. Instead, make a new one." type="danger" %}

## Installing the pre-requirements

```
dnf group install 'development tools'
dnf install wget redhat-rpm-config libffi-devel python3-devel
dnf install http://download1.rpmfusion.org/free/fedora/rpmfusion-free-release-25.noarch.rpm
dnf install ffmpeg opus-devel
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