---
title: Format Strings
sidebar: red_sidebar
permalink: /red_guide_command_args/
---

*(not yet implemented)*

#### Custom commands can now use format strings!

## What does that mean for me?

[comment]: # (remind irdumb to put a 5th arg, (6th arg for target - 1st mention or author if not given). content without the prefix and command.)

1. you can do stuff like mention the user of the command or print the name of the channel the command was used in.  
2. If you want to use actual brackets you must escape them: {% raw %}-{o becomes :-{{o and ヽ{o.o}/ becomes ヽ{{o.o}}/{% endraw %}

3. all your custom commands that had brackets before the update will be automatically escaped. You won't notice a difference!  


## Woah, woah. Mention the user? How do?

You'll need to learn how to use format strings. Here's some info. Read it? Skip it? Up to you. TL;DR; is up above and the instructions are down below.

## What are format strings?

> Format strings contain "replacement fields" surrounded by curly braces `{}`. Anything not put in braces is considered literal text, which is unchanged in the output If you need to contain a brace character in the field,  escape it by using double braces `{{` and `}}`.  
[Source](https://docs.python.org/3/library/string.html#format-string-syntax)  
More information about format strings at the source. [comment]: # (can you include this somewhere?)

Effectively, they are shortcuts that pull data straight from the context of the message. This can include user ids, user mentions, usernames, server/channel names and message content. This adds functionality that was previously only available via writing your own cog/commands. Instead, due to some clever wizardry from **irdumb**, you can now use some of these parameters in your custom commands.

### How do.

## The arguments

All arguments can be referenced by name, but also by number. The ones currently available in Red are:  

* {author} or {0}  
* {server} or {1}  
* {channel} or {2}  
* {message} or {3}  
* {input} or {4} *not implemented yet*  
* {target} or {5} *not implemented yet*  

### How do I use these?

You can get a ton of info from these arguments! All you need to do to get the info is reference an argument's attributes with a period like so: {argument.attribute}  
ex. {author.mention} or {channel.name} [what is this? currently adding.]

### What info can I get from these?

#### author

if no attribute is given, name#discriminator is give. ex. {0} becomes frank#1234  
* name  
* mention  
* id  
* discriminator - the user's #1234 number  
* game  
* status - online/offline/away  
* joined_at - the date the user joined the server  
* created_at - the date the user's account was created  
* avatar_url - the url for the user's profile picture  
* voice_channel - the voice channel the user is in. None if the user isn't in one  

#### server

* name  
* id  
* member_count  
* afk_channel  
* afk_timeout  
* created_at  
* default_channel  
* region  
* icon_url  
* owner - the server owner's member object. Has the same attributes as author does.  
* me - the bot's member object... Not sure why you'd want it, but it has the same attributes as author does.  

#### mention

available for author/channel

This will mention the @user or #channel of the command.  
example: {author.mention} is in {2.mention}

#### id

available for author/server/channel

Returns the ID of the author.  
Reference number: **{0.id}**

#### server.name

Gets the name of the server.  
Reference number: **{1}** or **{1.name}**

#### channel.name

Gets the name of the channel where the command was executed.  
Reference number: **{2}** or **{2.name}**

#### message

If the previous arguments aren't enough, you can use this.  
This should only be used by people that know what they're doing. You'll need to use `debug dir(ctx.message)` and figure out which attributes work yourself.

#### input

#### mention

## Examples

* `!addcom kickme :boot: {author.name}`  
* `!addcom greet hi {author.mention}! welcome to {server.name}!`  
* `!addcom whereami? you're in {channel.name}.. dumby`  
* `!addcom id {author.id}`  
