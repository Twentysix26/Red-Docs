---
title: Autorestarting on Linux (systemd)
sidebar: red_sidebar
permalink: /red_guide_linux_systemd/
---

{{site.data.alerts.important}} Before doing this, start Red at least once and do the configuration process. {{site.data.alerts.end}}  

How to make Red auto restart in case of crash, using systemd. This guide assumes you used the Linux guide to install Red and that you are using a Linux distribution that uses systemd (Example: Ubuntu 15.04 or newer).

Run this command in terminal:

`sudo nano /etc/systemd/system/red.service`

Next, paste the following script, replace `bot location` with the absolute path to the location where the bot is located (for example `/home/username/Red-DiscordBot` as opposed to `~/Red-DiscordBot`),  `username` with your linux account name and `usergroup` with your user's group (usually the same as the username, but you can check with `groups username` in the terminal.)

```
[Unit]
Description=Red-DiscordBot
After=multi-user.target
[Service]
WorkingDirectory=bot location
User=username
Group=usergroup
ExecStart=/usr/bin/python3.5 bot location/red.py
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
