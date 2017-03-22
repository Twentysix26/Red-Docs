---
title: Install on Alpine
sidebar: red_sidebar
permalink: /red_install_alpine/
last_updated: Mar 20, 2016
description: A guide for installing Red on Alpine.
---

This guide is aimed as installing Red on Alpine.

{% include callout.html content="**Warning**: For safety reasons, DO NOT install Red with a root user. Instead, make a new one." type="danger" %}

## Installing the pre-requirements

```
apk add python3-dev ffmpeg git openssl libffi-dev libsodium-dev g++ make
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

To update the bot enter the bot directory and start the launcher,  then select ``Install requirements`` and select 1 or 2
```
python3 launcher.py
```