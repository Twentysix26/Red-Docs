---
title: Installing on Ubuntu/Debian
sidebar: red_sidebar
permalink: /red_install_linux/
last_updated: May 19, 2016
---

{{site.data.alerts.important}} For saftey considerations, DO NOT install Red onto the root user. {{site.data.alerts.end}}  
Instead, make a new one, following [this guide](https://help.ubuntu.com/14.04/ubuntu-help/user-add.html).  

### Repositories
```
sudo add-apt-repository ppa:fkrull/deadsnakes -y
sudo add-apt-repository ppa:mc3man/trusty-media -y
sudo apt-get update -y
sudo apt-get upgrade -y
sudo apt-get install build-essential unzip -y
```

#### Git
```
sudo apt-get install git
```

#### Python 3.5
```
sudo apt-get install python3.5-dev -y
```

#### Pip
```
wget https://bootstrap.pypa.io/get-pip.py
sudo python3.5 get-pip.py
```
#### Opus    
``` 
sudo apt-get install libopus-dev -y 
``` 

#### ffmpeg
```
sudo apt-get install ffmpeg -y
```

### Requirements
Not *all* of these are required, refer to [this](/Red-Docs/red_win_requirements/) for further explanations.

```
sudo pip3.5 install git+https://github.com/Rapptz/discord.py@async
sudo pip3.5 install youtube_dl
sudo pip3.5 install imgurpython
```   

{{site.data.alerts.important}} If you're getting the "Command python setup.py egg_info error when installing discord.py, you'll have to do this first:{{site.data.alerts.end}}
```
sudo apt-get install python3.5-dev build-essential libssl-dev libffi-dev
```

### Red  
{{site.data.alerts.note}}Do not use sudo from now on! This will affect the permissions of the bot folder and will cause a failed installation!{{site.data.alerts.end}}
```
git clone -b develop --single-branch https://github.com/Twentysix26/Red-DiscordBot.git Red-DiscordBot
```

If all is done correctly, your main folder should look like this:  
![mainfolderlinux](https://i.imgur.com/9pwxtYm.png)

#### Running Red  

Want Red to auto-restart whenever it crashes? Follow [this guide](/Red-Docs/red_guide_linux_upstart). Otherwise, do this:

```
cd Red-DiscordBot
python3.5 red.py
```

On the initial setup, you will be required to enter a token. Get one [here](https://discordapp.com/developers/applications/me). If you get stuck, follow the [bot accounts](/Red-Docs/red_guide_bot_accounts) guide.  
To invite your bot, use the link given to you in Terminal when booting the bot up.  

#### Updating Red

```
cd Red-DiscordBot
git pull
```

Credit for part of this guide goes to MusicBot's wiki
