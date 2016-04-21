---
title: Installing on Ubuntu/Debian
sidebar: red_sidebar
permalink: /red_install_linux/
---

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
sudo pip3.5 install git+https://github.com/Rapptz/discord.py@async
sudo pip3.5 install youtube_dl
sudo pip3.5 install imgurpython
```   

{{site.data.alerts.important}} If you're getting the `Command "python setup.py egg_info"` error when installing discord.py, you'll have to do this firt: ```sudo apt-get install python3.5-dev build-essential libssl-dev libffi-dev```{{site.data.alerts.end}}

### Red  
```
git clone -b develop --single-branch https://github.com/Twentysix26/Red-DiscordBot.git Red-DiscordBot
```

If all is done correctly, your main folder should look like this:  
![mainfolderlinux](https://i.imgur.com/9pwxtYm.png)

#### Running Red  

Want Red to autorestart whenever it crashes? Follow [this guide](/Red-Docs/red_guide_linux_upstart)

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
