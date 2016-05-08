---
title: Autorestarting on Linux
sidebar: red_sidebar
permalink: /red_guide_linux_upstart/
---

{{site.data.alerts.important}} Before doing this, start it at least once and do the configuration process. {{site.data.alerts.end}}  

How to make it auto restart in case of crash, using Upstart. This guide assumes you used the Linux guide to install Red.
{{site.data.alerts.note}} Newer Ubuntu versions (15 and above) do not have upstart built in.{{site.data.alerts.end}}  
To enable upstart on these systems, follow [this guide](https://www.maketecheasier.com/re-enable-upstart-ubuntu/). ***Please note this isn't guaranteed to work, and we are not liable for any broken machines.***

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
