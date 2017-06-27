---
title: Autorestarting on Linux
sidebar: red_sidebar
permalink: /red_guide_linux_autostart/
description: Information for automatically starting Red on Linux.
---

{% include callout.html content="**Important**: Before doing this, start Red at least once and do the configuration process." type="warning" %}

### Upstart

This guide assumes you used the Linux guide to install Red and that your Linux distribution uses Upstart.

Run this command in terminal:

`sudo nano /etc/init/red.conf`

Next, paste the following script, replace `USERNAME` with your linux account name and `USERGROUP` with your user's group (usually the same as the username, but you can check with `groups username` in the terminal.)

```
start on runlevel [2345]
stop on runlevel [016]

respawn
chdir /home/USERNAME/Red-DiscordBot
setuid USERNAME
setgid USERGROUP
exec python3.5 red.py --no-prompt
```

Save with CTRL+O.  

You can now start Red using  
`sudo start red`  

Other available commands:  
`sudo stop red`  
`sudo restart red`

### systemd
This guide assumes you used the Linux guide to install Red and that you are using a Linux distribution that uses systemd (Example: Ubuntu 15.04 or newer).

Run this command in terminal:

`sudo nano /etc/systemd/system/red.service`

Next, paste the following script, replace, `username` with your linux account name and `usergroup` with your user's group (usually the same as the username, but you can check with `groups username` in the terminal.)

```
[Unit]
Description=Red-DiscordBot
After=multi-user.target
[Service]
WorkingDirectory=/home/username/Red-DiscordBot
User=username
Group=usergroup
ExecStart=/usr/bin/python3.5 /home/username/Red-DiscordBot/red.py --no-prompt
Type=idle
Restart=always
RestartSec=15

[Install]
WantedBy=multi-user.target
```

Save with CTRL+O.  

You can now start Red using  
`sudo systemctl start red.service`  

If you want Red to start automatically on boot, you can do
`sudo systemctl enable red.service`

If you need to view Red's log, you can do
`sudo journalctl -u red.service`

Other available commands:  
`sudo systemctl stop red.service`  
`sudo systemctl restart red.service`

### pm2
This guide assumes you used the Linux guide to install Red and that you have pm2 installed

cd into your Red directory and find out the location of your python installation.
This can be done using
`which python3.5`

Use the path that you got from the above command in the command shown below and put it where the text and the brackets are
```
pm2 start red.py --name "Red-Discordbot" --interpreter <path to python 3.5> -- --no-prompt
```

Confirm that you setup red with pm2 with
`pm2 status`

To enable auto startup on error and startup use
`pm2 startup`
If you arent root it will give you a command that you will need to run before it will take effect.

You can also view statistics of your Red online on https://keymetrics.io/ 
