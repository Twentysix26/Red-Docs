---
title: Autorestarting on Linux
sidebar: red_sidebar
permalink: /red_guide_linux_upstart/
---

**NOTE: Before doing this, start it at least once and do the configuration process.**  

How to make it auto restart in case of crash, using Upstart. This guide assumes you used the Linux guide to install Red.

`sudo nano /etc/init/red.conf`

Paste this script, replace `username` with your account name and `usergroup` with your user's group (usually the same as the username, but you can check with `groups username`)

```
start on runlevel [2345]
stop on runlevel [016]

respawn
chdir /home/username/Red-DiscordBot
setuid username
setgid usergroup
exec python3.5 red.py --no-prompt
```

Save with CTRL+O.  
You can now start Red using  
`sudo start red`  

Other available commands:  
`sudo stop red`  
`sudo restart red`
