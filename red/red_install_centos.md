---
title: Install on CentOS
sidebar: red_sidebar
permalink: /red_install_centos/
last_updated: Mar 20, 2016
description: A guide for installing Red on CentOS.
---

This guide is aimed as installing Red on CentOS.

{% include callout.html content="**Warning**: For safety reasons, DO NOT install Red with a root user. Instead, make a new one." type="danger" %}

## Installing the pre-requirements

```
yum -y groupinstall development
yum -y install https://centos7.iuscommunity.org/ius-release.rpm
yum -y install yum-utils wget which python35u python35u-pip python35u-devel openssl-devel libffi-devel git opus-devel
sh -c "$(wget https://gist.githubusercontent.com/mustafaturan/7053900/raw/27f4c8bad3ee2bb0027a1a52dc8501bf1e53b270/latest-ffmpeg-centos6.sh -O -)"
```

## Cloning the bot

```
git clone -b develop --single-branch https://github.com/Twentysix26/Red-DiscordBot.git
```

## Updating the bot requirements

```
cd Red-DiscordBot
python3.5 launcher.py
```
From there select ``Install requirements`` and select 1 or 2

## Running the bot

Enter the bot directory and start the launcher, then select option 1 or 2 and follow the initial setup.
```
python3.5 launcher.py
```

## Updating the bot

To update the bot enter the bot directory and start the launcher,  then select ``Install requirements`` and select 1 or 2
```
python3.5 launcher.py
```