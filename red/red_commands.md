---
title: Red's commands
sidebar: red_sidebar
permalink: /red_commands/
description: A (somewhat up to date) list of commands for Red
---

Red is now modular and uses commands + subcommands~

If you are confused, type in `[p]help [command]` and if help command lists subcommands do `[p]help [command] [subcommand]`


`[p]` being short for your prefix, such as `!`, `.`, `^`<br><br><Br>

**NOTE:** Do not write your commands in `[]` or `[]`.

Wrong Example: [p]play [http://youtube.com.....]

Right Example:  [p]play http://youtube.com.....

{% include callout.html content="**This list is not up to date with the current version and it's only meant to be a general reference for the features that Red offers. Always rely on the internal help command.**" type="danger" %}



### Alias

| Command   | Description                            |
|:----------|:---------------------------------------|
| alias     | Manage per-server aliases for commands |

### Audio

| Command    | Description                                                     |
|:-----------|:----------------------------------------------------------------|
| cache      | Cache management tools.                                         |
| skip       | Skips a song, using the set threshold if the requester isn't    |
| queue      | Queues a song to play next. Extended functionality in `[p]help` |
| shuffle    | Shuffles the current queue                                      |
| local      | Local playlists commands                                        |
| prev       | Goes back to the last song.                                     |
| stop       | Stops a currently playing song or playlist. CLEARS QUEUE.       |
| playlist   | Playlist management/control.                                    |
| yt         | Searches and plays a video from YouTube                         |
| joinvoice  | Joins your voice channel                                        |
| disconnect | Disconnects from voice channel in current server.               |
| sing       | Makes Red sing one of her songs                                 |
| pause      | Pauses the current song, `[p]resume` to continue.               |
| play       | Plays a link / searches and play                                |
| skip       | Skips a song, using the set threshold if the requester isn't    |
| song       | Info about the current song.                                    |
| audiostat  | General stats on audio stuff.                                   |
| repeat     | Toggles REPEAT                                                  |
| audioset   | Audio settings.                                                 |
| resume     | Resumes a paused song or playlist                               |

### CustomCommands

| Command        | Description                |
|:---------------|:---------------------------|
| editcom        | Edits a custom command     |
| customcommands | Shows custom commands list |
| delcom         | Deletes a custom command   |
| addcom         | Adds a custom command      |

### Downloader

| Command   | Description                |
|:----------|:---------------------------|
| cog       | Additional cogs management |

### Economy

| Command     | Description                     |
|:------------|:--------------------------------|
| payday      | Get some free credits           |
| economyset  | Changes economy module settings |
| slot        | Play the slot machine           |
| leaderboard | Server / global leaderboard     |
| bank        | Bank operations                 |
| payouts     | Shows slot machine payouts      |

### General

| Command    | Description                                     |
|:-----------|:------------------------------------------------|
| flip       | Flips a coin... or a user.                      |
| roll       | Rolls random number (between 1 and user choice) |
| stopwatch  | Starts/stops stopwatch                          |
| 8          | Ask 8 ball a question                           |
| lmgtfy     | Creates a lmgtfy link                           |
| hug        | Because everyone likes hugs                     |
| userinfo   | Shows users's informations                      |
| poll       | Starts/stops a poll                             |
| rps        | Play rock paper scissors                        |
| stopwatch  | Starts/stops stopwatch                          |
| choose     | Chooses between multiple choices.               |
| 8          | Ask 8 ball a question                           |
| urban      | Urban Dictionary search                         |
| serverinfo | Shows server's informations                     |
| ping       | Pong.                                           |

### Image

| Command   | Description                                |
|:----------|:-------------------------------------------|
| gif       | Retrieves first search result from giphy   |
| gifr      | Retrieves a random gif from a giphy search |
| imgur     | Retrieves a picture from imgur             |

### Mod

| Command   | Description                                          |
|:----------|:-----------------------------------------------------|
| reason    | Lets you specify a reason for mod-log's cases        |
| names     | Show previous names/nicknames of a user              |
| ignore    | Adds servers/channels to ignorelist                  |
| mute      | Mutes user in the channel/server                     |
| whitelist | Users who will be able to use the bot                |
| editrole  | Edits roles settings                                 |
| ban       | Bans user and deletes last X days worth of messages. |
| modset    | Manages server administration settings.              |
| blacklist | Bans user from using the bot                         |
| unmute    | Unmutes user in the channel/server                   |
| cleanup   | Deletes messages.                                    |
| rename    | Changes user's nickname                              |
| kick      | Kicks user.                                          |
| unignore  | Removes servers/channels from ignorelist             |
| filter    | Adds/removes words from filter                       |
| softban   | Kicks the user, deleting 1 day worth of messages.    |

### Owner

| Command   | Description                       |
|:----------|:----------------------------------|
| unload    | Unloads a module                  |
| load      | Loads a module                    |
| command   | Disables/enables commands         |
| leave     | Leaves server                     |
| reload    | Reloads a module                  |
| version   | Shows Red's current version       |
| shutdown  | Shuts down Red                    |
| contact   | Sends message to the owner        |
| cogs      | Shows loaded/unloaded cogs        |
| servers   | Lists and allows to leave servers |
| set       | Changes Red's global settings.    |
| uptime    | Shows Red's uptime                |
| info      | Shows info about Red              |
| join      | Joins new server                  |
| debug     | Evaluates code                    |

### Streams

| Command     | Description                                         |
|:------------|:----------------------------------------------------|
| streamset   | Stream settings                                     |
| streamalert | Adds/removes stream alerts from the current channel |
| twitch      | Checks if twitch stream is online                   |
| hitbox      | Checks if hitbox stream is online                   |
| beam        | Checks if beam stream is online                     |

### Trivia

| Command   | Description                                    |
|:----------|:-----------------------------------------------|
| trivia    | Start a trivia session with the specified list |
| triviaset | Change trivia settings                         |

### None

| Command   | Description         |
|:----------|:--------------------|
| help      | Shows this message. |
