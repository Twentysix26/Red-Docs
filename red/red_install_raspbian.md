---
title: Installing on Raspbian
sidebar: red_sidebar
permalink: /red_install_raspbian/
last_updated: June 13, 2016
toc: true
---

The installation on Raspbian differs quite a bit from the a traditional Linux installation.
Due the fact that Raspbian does not natively support Python 3.5 (and above),
and that Raspbian does not support Ffmpeg. In this guide there is a easy fix for all these problems.

# Installing with a script (Easiest)
For ease of access and installing.
You can use the following ``.sh`` script to install all the pre-requirements.

### Downloading the ``.sh`` to your Raspbian
To acquire and run the script. you must transfer it to your server with sftp or with ``wget``,
for the sake of simplicity we will use ``wget``

```
wget https://twentysix26.github.io/Red-Docs/files/pi.sh
sudo chmod +x pi.sh
```

### Running the script
Next we will run the script.
This script will install pre-requirements to run your very own Red bot on your Pi.

{{site.data.alerts.warning}}The installation of the pre-requirements can vary from at least 30 minutes to 90 minutes, depending on the model of Pi you own.{{site.data.alerts.end}}

```
./pi.sh
```

Follow the instructions that the script gives you.
Don't worry, you only need to enter one thing and you're done.

In case you don't know your number of CPU cores, see the sheet below.

| Pi 1 	| Pi 1+ 	| Pi 1B 	| Pi 1B+ 	| Pi 2B 	| Pi 3 	|
|------	|-------	|-------	|--------	|-------	|------	|
| 1    	| 1     	| 1     	| 1      	| 4     	| 4    	|

### Cloning and preparing Red
Once the script says the following you can start cloning Red and installing it.
From here you need to generate your new bot account.

```
You're done, you can now clone Red by following Step 3 of the installation here
```

Let's start by creating a bot application and retrieving the token.
Log in [here](https://discordapp.com/developers/applications/me) with your Discord account.
Then make a new application. Once you made your application, make a bot account from your new application page.
Keep the page open since you will need it later.

#### Cloning Red
The next thing we will be doing is cloning Red.

```
git clone -b develop --single-branch https://github.com/Twentysix26/Red-DiscordBot.git red-discordbot
cd red-discordbot
```

#### Running Red
We're at the last step. You will need your token for this final part of the installation.
Run Red with the following command and read the instructions carefully for a smooth installation.

```
python3 red.py
```

#### Final notes.
Congratulations! You have (If you have done it right) successfully installed Red.
In the following chapter we will share some final notes that you will need to know to get the most out of Red

##### audio
To use audio you need to toggle the player to use Avconv. To do this you can use the following command in your Discord server. ``audioset player``

# Installing Red manually (Experienced Linux users)
In case you are experienced in Linux, or don't mind doing it all manual. Here the entire process of installing Python and the other requirements get explained in great detail.

### Getting the easy stuff from ``apt-get``
This part is straight forward. Getting all the requirements for Red. This includes Avconv, Git and tools to build Python with.

```
sudo apt-get upgrade
sudo apt-get install -y libbz2-dev libopus-dev liblzma-dev libsqlite3-dev libncurses5-dev libgdbm-dev zlib1g-dev libreadline-dev git unzip libssl-dev tk-dev build-essential libffi-dev libav-tools
```

### Building Python
As mentioned, Python v3.5 and up doesn't come with Raspbian.
So we will have to build our own from scratch.
Here you will download the source python files and compiling them from scratch.
This will take up to 90 minutes depending on the model of Pi you got.
While entering ``redcores=x`` use your number of CPU cores coresponding with the Pi model

| Pi 1 	| Pi 1+ 	| Pi 1B 	| Pi 1B+ 	| Pi 2B 	| Pi 3 	|
|------	|-------	|-------	|--------	|-------	|------	|
| 1    	| 1     	| 1     	| 1      	| 4     	| 4    	|

```
redcores=
release=3.5.1
mkdir ~/python3
cd ~/python3
wget https://www.python.org/ftp/python/$release/Python-$release.tar.xz
tar xvf Python-$release.tar.xz
cd Python-$release
./configure
make -j$redcores
sudo make install -j$redcores
```

### Installing Pip and modules
As the final step for the pre-requirements we're going to install Pip to install Discord.py (The library the bot is build on),
youtube_dl (To download video's for audio) and finally imgurpython for the Imgur API.

```
wget https://bootstrap.pypa.io/get-pip.py
sudo python3 get-pip.py
sudo pip3 install youtube_dl
sudo pip3 install imgurpython
sudo pip3 install git+https://github.com/Rapptz/discord.py@5fa715c35033c4fd5438649a03f4d2835e7a7f06
```

### Cloning Red
A straight forward process. Here we clone Red to serve as our bot.

```
git clone -b develop --single-branch https://github.com/Twentysix26/Red-DiscordBot.git red-discordbot
cd red-discordbot
```

### running Red
And finally we can start Red with

```
python3 red.py
```
