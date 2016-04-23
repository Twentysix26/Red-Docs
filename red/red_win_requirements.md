---
title: Windows requirements
sidebar: red_sidebar
permalink: /red_win_requirements/
last_updated: April 23, 2016
---
 
### Software
- [Install Python](https://www.python.org/downloads/). Red **needs** 3.5.0 or superior.  
{{site.data.alerts.important}}Remember to check "Add python to path"!{{site.data.alerts.end}}
![]((http://i.imgur.com/dfsaVLx.png))  

- [Install Git](https://git-scm.com/download/win)  
{{site.data.alerts.important}}Don't forget to check "Use Git from the Windows Command Prompt"{{site.data.alerts.end}}  
![](http://i.imgur.com/guis7EE.png)  

### Python libraries

**Windows:** open the start menu, type cmd, right click and open the command prompt as admin.  
**Linux:** open the console (Ctrl + Alt + T on Ubuntu)

With Red being modular, there's only one requirement that's necessary to run her. Any other requirement is dependent on the modules (cogs) you want to load. This is the full list, if you're not interested in certain modules feel free to ignore their requirements too.

**Red's requirement (_must_ install this):**

```
pip3 install git+https://github.com/Rapptz/discord.py@async
```

**cogs.audio requirement:**

```
pip3 install youtube_dl
```

[ffmpeg](https://www.ffmpeg.org/download.html) ([ffmpeg.exe](https://github.com/Twentysix26/Red-DiscordBot/raw/master/ffmpeg.exe), [ffplay.exe](https://github.com/Twentysix26/Red-DiscordBot/raw/master/ffplay.exe), [ffprobe.exe](https://github.com/Twentysix26/Red-DiscordBot/raw/master/ffprobe.exe)) and [libopus](https://www.opus-codec.org/downloads/) ([32bit](https://github.com/Twentysix26/Red-DiscordBot/raw/master/libopus-0.dll)/[64bit](https://cdn.discordapp.com/attachments/133049553984159745/155762132179222529/libopus-0.dll)) must be installed too. Either install them from their original source or download the linked files and put them in Red's main folder (when you  install it, as explained in [the next guide](/Red-Docs/red_install_win)).  
Of course .exe and .dll are only for Windows. [Linux users may refer to this](/Red-Docs/red_install_linux).

_**NOTE: The opus library bitness MUST match your python's installation bitness, whereas your ffmpeg bitness much match your system's bitness. For example, if you installed python 32bit on a 64but system, your opus library MUST be 32bit and your ffmpeg must be 64bit**_

**cogs.image requirements:**

```
pip3 install imgurpython
```

Hopefully things went smoothly.  

If you're on Windows, it's time to install Red herself.
[Proceed here](/Red-Docs/red_install_win).  

On Linux, your requirements are not yet fully installed. Proceed with [this guide](/Red-Docs/red_install_linux).

