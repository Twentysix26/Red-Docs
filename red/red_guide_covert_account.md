---
title: Convert your account
sidebar: red_sidebar
permalink: /red_guide_convert_account/
last_updated: April 21, 2016
---

{{site.data.alerts.important}}Converting bot accounts will be disabled on May 1st, 2016!{{site.data.alerts.end}}

### Convert automatically

1. Download [this script](https://gist.github.com/Twentysix26/c2e5f0e9c0120308122361566c2c997e). **This is not a cog.**
2. Open the script  
Windows users:  
  * Double click on it  
Linux/Mac users:  
  * Run it ***in the terminal***
  * To do this, open the terminal and type `cd /path/to/file/` then `python3 bot_conversion.py`
3. Enter your own details
4. Enter your bot account's details
5. ...
6. Profit  

You can now [login](#logging-in-with-a-token) using your new token. You can access your new bot account's token from the [applications page](https://discordapp.com/developers/applications/me) at any time. ***Be aware that clicking "Show token" will generate a new one, thus your login details will need to be updated.***

### Convert manually

***This assumes you are using a Linux or Mac machine.***

#### Step 1: Get your authorization header

1. Open Google Chrome and navigate to [discordapp.com](https://discordapp.com) and login with *your account*.  
2. Right click, and press inspect.  
3. Click console, and type `localStorage`  
4. Double click, and copy the section after `token:` without the double speech marks `""` around it. **Note this down somewhere.**  

If that was a bit complicated, here's a handy gif! ![get auth header](http://i.imgur.com/FyxSvpE.gif)

#### Step 2: Get your bot account's authorization header

Follow the above stepes except this time, ***login to your bot's user account***. Copy that down too.

#### Step 3: Create a Discord application

1. Navigate to [the applications page](https://discordapp.com/developers/applications/me) and click 'New Application'. Enter a name and press create.
2. Copy the `Client ID` This will be used to add your account to the application.

#### Step 4: Convert the account

**This process is _irreversible_. Only continue if you know what you are doing!**  
1. Open your console.  For Mac, it can be found under Applications/Utilities/Terminal.app  
2. Type `curl -H 'Authorization: YOUR TOKEN' \` Replace `YOUR TOKEN` with the token you grabbed earlier for *your account*. Press 'Enter'.  
3. Type `-H "Content-Type: application/json" \`  
4. Type `-X POST -d '{"token": "YOUR BOT USERS TOKEN"}' \` Replace `YOUR BOT USERS TOKEN` with the token you grabbed earlier for *your bot*. Press 'Enter'.  
5. Type `https://discordapp.com/api/oauth2/applications/APPLICATION_ID/bot` Replace `APPLICATION_ID` with the `Client ID` we grabbed earlier.  

You should get back something that looks like this:
```
{"username": "RED", "bot": true, "token": "YOUR BOTS NEW TOKEN", "avatar": "338f4d9d97056ae22c4a3feab5f0da07",
"discriminator": "1550", "id": "132254000253894656"}
```
Copy down the `token` and the `id`. These will be what is used for OAuth requests and logging in to the bot. You can always access them again on the [applications page](https://discordapp.com/developers/applications/me). *Note that clicking "show token" will generate a new one, thus requiring you to reset `settings.json`*

## Logging in with a token

First things first, update discord.py `pip3 install --upgrade git+https://github.com/Rapptz/discord.py@async`, then update Red by starting a terminal in Red's main folder, and typing `git pull`.

If your bot was previously a user account, delete `/data/red/settings.json`. This will reset the bot login details, and allow you to login using a token.

Upon startup, you should receive a screen that looks like this: ![login](https://i.imgur.com/Y21YuDx.png)   
Enter your token and press 'Enter'. You can now set up the bot normally.
