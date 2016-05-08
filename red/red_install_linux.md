---
title: Installing on Ubuntu/Debian
sidebar: red_sidebar
permalink: /red_install_linux/
last_updated: April 22, 2016
---
{{site.data.alerts.important}}For saftey considerations, DO NOT install Red onto the root user.{{site.data.alerts.end}}  
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

#### ffmpeg
```
sudo apt-get install ffmpeg -y
```

#### Opus
```
sudo apt-get install libopus-dev -y
```

### Requirements
Not *all* of these are required, refer to [this](/Red-Docs/red_win_requirements/) for further explanations.

```
sudo pip3.5 install git+https://github.com/Rapptz/discord.py@5fa715c35033c4fd5438649a03f4d2835e7a7f06
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

#### Updating Red

```
cd Red-DiscordBot
git pull
```

Credit for part of this guide goes to MusicBot's wiki
