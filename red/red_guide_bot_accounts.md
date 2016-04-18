---
title: Bot accounts
sidebar: red_sidebar
permalink: /red_guide_bot_accounts/
---

![](https://img.shields.io/badge/Guide%20by-fishyfing-blue.svg)

## What is a bot account?

A bot account is different to a normal account. Any public bot account will have this ![Bot tag](https://i.imgur.com/OQufliA.png "Bot Tag") next to them, and this is a *must* for all public bot accounts (aka a bot that is on a server you aren't on). If you don't have one of these by the **1st May 2016**, your account will be forcibly converted.

Next, the differences between normal user accounts and bot accounts.

>Bots within the Discord API are a separate type of users that are owned by applications (which are owned by users), and authenticate to the system using a token rather than a username and password. Anybody wishing to create a public bot **must** use a bot account and the OAuth2 API.

This means that once you create a bot account, you cannot log into it. This is normally fine, unless you are [converting a user account](#converting-a-user-account). Basically, what the extract above says is that you ***cannot*** login to your bot account, as it doesn't have an email or password.

>Bots cannot utilize the friends list feature.

This is saying that you cannot add a bot to your friends list (which is a lie!). ![proof](https://i.imgur.com/pagjorI.png)
![bs](http://i.imgur.com/0DSbAs4.gif)

### Bot Invites

>Bots cannot accept invites.

This is the most important change. Bot accounts cannot accept invites normally, so `[p]join` won't work anymore! Instead, requests to join a server are made using the OAuth2 system, which has a url that looks something like this:

`https://discordapp.com/oauth2/authorize?&client_id=168453097859973120&scope=bot`

To get your own link, just replace `168453097859973120` with your own client ID from the [applicatons page](https://discordapp.com/developers/applications/me).  
If you wish to add your bot to the [support server](https://discord.gg/0k4npTwMvTpv9wrh), use `?addbot <OAuth URL>`.  
If you want to add specific permissions (disabled in the support server - ***no tring to take over!***), then use [this](https://abal.moe/Discord/permissions.html) and add `&permissions=x`, replacing x with the number given.

### Other Differences

>Bots are not limited to a maximum of 100 guilds.

As of the 14th April 2016, users are now restricted to joining 100 guilds. This means that if your bot needs to access more, it is recommended to upgrade.

>Bots have a per-server rather than global rate limit.

Standard users are restricted to sending a certain amount of messages per minutes *globally*. With a bot account, this is restricted to a certain amount of messages per *server*, or guild.

>Bots can join more than one voice channel at a time.

***Note:*** *This is not implemented into Red* ***yet***.

## Creating a new bot account

1. Head over to https://discordapp.com/developers/applications/me
2. Click "new application". Give it a name, picture and description.
3. Click "Create Bot User" and click "Yes, Do It!" when the dialog pops up.
4. Copy down the `token`. This is what is used to login to Red.

Here's a handy gif to explain the process. ![oauth new bot](http://i.imgur.com/Y2ouW7I.gif)


## Converting a user account

>But what if my bot is already in *loads* of servers, and I don't want to re-add it?

Luckily for you, up until the ***1st of May 2016***, you can convert existing user accounts to bot accounts. 

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

### Convert manually (for if the above script fails)

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

1. Navigate to https://discordapp.com/developers/applications/me and click 'New Application'. Enter a name and press create.
2. Copy the `Client ID` This will be used to add your account to the application.

#### Step 4: Convert the account

**This process is _irreversible_. Only continue if you know what you are doing!**  
1. Open your console.  For Mac, it can be found under Applications/Utilities/Terminal.app  
2. Type `curl -H 'Authorization: YOUR TOKEN' \` Replace `YOUR TOKEN` with the token you grabbed earlier for *your account*. Press 'Enter'.  
3. Type `-H "Content-Type: application/json" \`  
4. Type `-X POST -d '{"token": "YOUR BOT USERS TOKEN"}' \` Replace `YOUR BOT USERS TOKEN` with the token you grabbed earlier for *your bot*. Press 'Enter'.  
5. Type `https://discordapp.com/api/oauth2/applications/APPLICATION_ID/bot` Replace `APPLICATION_ID` with the `Client ID` we grabbed earlier.  

You should get back something that looks like this: 
```python
{"username": "RED", "bot": true, "token": "YOUR BOTS NEW TOKEN", "avatar": "338f4d9d97056ae22c4a3feab5f0da07",
"discriminator": "1550", "id": "132254000253894656"}
```
Copy down the `token` and the `id`. These will be what is used for OAuth requests and logging in to the bot. You can always access them again on the [applications page](https://discordapp.com/developers/applications/me). *Note that clicking "show token" will generate a new one, thus requiring you to reset `settings.json`*

## Logging in with a token

First things first, update discord.py `pip3 install --upgrade git+https://github.com/Rapptz/discord.py@async`, then update Red by starting a terminal in Red's main folder, and typing `git pull`.

If your bot was previously a user account, delete `/data/red/settings.json`. This will reset the bot login details, and allow you to login using a token.

Upon startup, you should receive a screen that looks like this: ![login](https://i.imgur.com/Y21YuDx.png)   
Enter your token and press 'Enter'. You can now set up the bot normally.
