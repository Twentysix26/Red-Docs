---
title: Command Arguments
sidebar: red_sidebar
permalink: /red_guide_command_args/
---

## What are command arguments?

Command arguments are shortcuts that pull data straight from the API wrapper. This can include user id's, user mentions, usernames, server/channel names and message content. This avoids you having to enter long pieces of code into your custom commands, such as `"{} You already have an account at the Twentysix bank.".format(user.mention)` (taken from the economy module). Instead, due to some clever wizardry from **irdumb**, you can now use some of these parameters in your custom commands.

## The arguments

All arguments can be referenced by name, but also by number. The ones currently available in Red are:  
* {author.name}  
* {author.mention}  
* {author.id}  
* {server.name}  
* {channel.name}  

### What do they do?

#### {author.name}

Pretty simple. This one gets the name of the user of the command.  
Reference number: **{0}** or **{0.name}**

#### {author.mention}

Pretty simple. This one mentions the user of the command.  
Reference number: **{0.mention}**

#### {author.id}

Returns the ID of the author.  
Reference number: **{0.id}**

#### {server.name}

Gets the name of the server.  
Reference number: **{1}** or **{1.name}**

#### {channel.name}

Gets the name of the channel where the command was executed.  
Reference number: **{2}** or **{2.name}**

## Examples

* `!addcom kickme :boot: {author.name}`
* `!addcom greet hi {author.mention}! welcome to {server.name}!`
* `!addcom whereami? you're in {channel.name}.. dumby`
* `!addcom id {author.id}`