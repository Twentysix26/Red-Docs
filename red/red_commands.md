---
title: Red's commands
sidebar: red_sidebar
permalink: /red_commands/
---

Red is now modular and uses commands + subcommands~

If you are confused, type in `[p]help [command]` and if help command lists subcommands do `[p]help [command] [subcommand]`


`[p]` being short for your prefix, such as `!`, `.`, `^`<br><br><Br>

**NOTE:** Do not write your commands in `[]` or `[]`. 

Wrong Example: [p]play [http://youtube.com.....]

Right Example:  [p]play http://youtube.com.....


### Alias Help

|  Commands |  Description |
|---|---|
| [p]alias  |  Manage per-server aliases for commands (has subcommands) | 
| [p]alias show [command]  |  Shows what command the alias executes. | 
| [p]alias add [command] [to_execute]  |  Add an alias for a command | 
| [p]alias help [command]  |  Tries to execute help for the base command of the alias | 
| [p]alias del [command]  |  Deletes an alias |

### Audio Help

|  Commands |  Description |
--------|----------
| [p]shuffle  |  Shuffles the playlist (no subcommands) | 
| [p]resume  |  Resumes currently paused song (no subcommands) | 
| [p]skip | Skips song  | 
| [p]list | Lists playlist (has subcommands)  |  
| [p]list playlist   |   | 
| [p]list local   |   | 
| [p]list queue   |   | 
| [p]local [local folder name] | Plays local playlist  | 
| [p]mix | Plays saved playlist (shuffled)  | 
| [p]audioset | Changes audio module settings  (has subcommands)  | 
| [p]audioset volume [volume number] | Sets the volume (0-1)  | 
| [p]audioset queue  | Enables/disables forced queue  | 
| [p]audioset status  | Enables/disables songs' titles as status  | 
| [p]audioset maxlength [time in seconds]  | Maximum track length (seconds) for requested links | 
| [p]loop | Loops single song  | 
| [p]playlist [playlist name] | Plays saved playlist  | 
| [p]queue [link] | Add link to queue  |
| [p]pause | Pauses the current song  |
| [p]prev | Previous song  |
| [p]addplaylist [playlist name] [playlist link] | Adds tracks from youtube playlist link. |
|  | Do not use spaces in playlist name |
|  | Replace them with hyphens or underscores instead |
| [p]song or [p]title | Shows the current song title  |
| [p]stop | Stops audio activities  |
| [p]sing | Make Red sing!  |
| [p]play | Plays link  |


### Custom Commands

|  Commands |  Description |
|---|---|
| [p]delcom [command] | Deletes a custom command  | 
| [p]addcom [command] [text/link]  | Adds a custom command  | 
| [p]customcommands  |   | 
| [p]editcom [command] [edited text/link] | Edits a custom command  | 

### Economy

|  Commands |  Description |
|---|---|
| [p]payday  | Get some free credits | 
| [p]slot  | Play the slot machine | 
| [p]economyset  | Changes economy module settings  | 
| [p]economyset paydaycredits [credits] | Credits earned each payday | 
| [p]economyset slotmax [bid] | Maximum slot machine bid | 
| [p]economyset paydaytime [seconds]  | Seconds between each payday | 
| [p]economyset slotmin [bid] | Minimum slot machine bid | 
| [p]bank  | Bank operations | 
| [p]bank balance [user]  | Shows balance of user. | 
| [p]bank transfer [user] [sum]  | Transfer credits to other users | 
| [p]bank register  | Registers an account at the Twentysix bank | 
| [p]payouts  | Shows slot machine payouts | 

### General

|  Commands |  Description |
|---|---|
| [p]flip or [p]flip [user]  | Flips a coin... or a user. | 
| [p]rps [rock, paper, or scissors]  | Play rock paper scissors | 
| [p]poll [question];[option1];[option2]  etc | Starts a poll | 
| [p]poll stop | Ends a poll | 
| [p]roll [number] | Rolls random number (between 1 and user choice). Default number is 100 | 
| [p]8  [question?] | Ask 8 ball a question | 
|   | Must end with a "?" | 
| [p]urban [word]  | Urban Dictionary search | 
| [p]stopwatch  | Starts/stops stopwatch | 
| [p]choose [option 1] [option 2] | Chooses between multiple choices. | 
| [p]info or [p]info [user]  | Shows users's informations | 
| [p]server  | Shows server's informations | 
| [p]lmgtfy [search]  | Creates a lmgtfy link | 

### Image

|  Commands |  Description |
|---|---|
| [p]gif [search] | Retrieves first search result from giphy | 
| [p]imgur [search] | Retrieves a random imgur picture | 
| [p]gifr [search]  | Retrieves a random gif from a giphy search | 

### Mod

|  Commands |  Description |
|---|---|
| [p]ignore | Adds servers/channels to ignorelist (has subcommands) | 
| [p]ignore server | Ignores current server | 
| [p]ignore channel or [p]ignore channel [channel] | Ignores channel, defaults to current one | 
| [p]ban [user] [days=0] | Bans user and deletes last X days worth of messages. | 
| [p]modset | Manages server administration settings. (has subcommands) | 
| [p]modset adminrole [role_name] | Sets the admin role for this server, case insensitive. | 
| [p]modset modrole [role_name] | Sets the mod role for this server, case insensitive. | 
| [p]cleanup | Deletes messages. | 
| [p]cleanup messages [number] | Deletes last X messages. | 
| [p]cleanup user [name/mention] [number] | Deletes last X messages from specified user. | 
| [p]cleanup text "Text here" [number] | Deletes last X messages matching the specified text. | 
| [p]filter | Adds/removes words from filter | 
| [p]filter remove [words...] | Remove words from the filter | 
| [p]filter add [words...] | Adds words to the filter | 
| [p]unignore | Removes servers/channels from ignorelist (has subcommands) | 
| [p]unignore server | Removes current server from ignore list | 
| [p]unignore channel or [p]unignore channel [channel] | Removes channel from ignore list | 
| [p]editrole | Edits roles settings (has subcommands) | 
| [p]editrole colour [role] [value] | Edits a role's colour | 
| [p]editrole name [role] [name] | Edits a role's name | 
| [p]kick [user] | Kicks user. | 


### Streams

|  Commands |  Description |
|---|---|
| [p]hitbox [name] | Checks if hitbox stream is online | 
| [p]twitch [name] | Checks if twitch stream is online | 
| [p]streamalert  | Adds/removes stream alerts from the current channel | 
| [p]streamalert twitch [channel] | Checks if twitch stream is online | 
| [p]streamalert hitbox [channel]  | Checks if hitbox stream is online | 

### Trivia

|  Commands |  Description |
|---|---|
| [p]trivia | Show's trivia list names (has subcommands) | 
| [p]trivia [list name] | Start a trivia session with the specified list | 
| [p]trivia stop | Ends the current session | 

### No Category

|  Commands |  Description |
|---|---|
| [p]uptime | Shows how long Red's been online | 
| [p]set | Changes settings (has subcommand) | 
| [p]set owner | Sets owner. | 
| [p]help | Shows list of commands | 