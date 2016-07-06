---
title: Format Strings
sidebar: red_sidebar
permalink: /red_guide_command_args/
last_updated: April 25, 2016
---

# Custom commands can now use format strings!

## What does that mean for me?

1. you can do stuff like mention the user of the command or print the name of the channel the command was used in.  
2. If you want to use actual brackets you must escape them. {% raw %}:-{o becomes :-{{o and ヽ{o.o}/ becomes ヽ{{o.o}}/{% endraw %}  
3. all your custom commands that had brackets before the update will be automatically escaped. You won't notice a difference!  


## Woah, woah. Mention the user? How do?

You'll need to learn how to use format strings. Here's some info. Read it? Skip it? Up to you. TL;DR; is up above and the instructions are down below.

## What are format strings?

> Format strings contain "replacement fields" surrounded by curly braces `{}`. Anything not put in braces is considered literal text, which is unchanged in the output If you need to contain a brace character in the field,  escape it by using double braces `{{` and `}}`. ([source](https://docs.python.org/3/library/string.html#format-string-syntax))  
More information about format strings at the source.

Effectively, they are shortcuts that pull data straight from the context of the message. This can include user ids, user mentions, usernames, server/channel names and message content. This adds functionality that was previously only available via writing your own cog/commands. Instead, due to some clever wizardry from **irdumb**, you can now use some of these parameters in your custom commands.

## K, but how do?!

### The arguments

All arguments can be referenced by name, but also by number. The ones currently available in Red are:  

* {author} or {0}  
* {server} or {1}  
* {channel} or {2}  
* {message} or {3}  
* {input} or {4} *not implemented yet*  
* {target} or {5} *not implemented yet*  
* {target_channel} or {6} *not implemented yet*

### How do I use these?

All you need to do to get the info is reference an argument's attributes with a period like so: {argument.attribute}  
ex. {author.mention} or {channel.name}
Note: all timestamps are in UTC time

### What info can I get from these?

You can get a ton of info from these arguments!  
For your convenience, below is a list of the most useful attributes.

If that's not enough for you, you can find the contents of most of these objects by using  
`!debug dir(ctx.message.author)`  
`!debug dir(ctx.message.server)`  
`!debug dir(ctx.message)`  
etc.  
Note: not all of the attributes given by those commands are usable. Experiment.

### Attributes

#### author  
if no attribute specified, name#discriminator is shown. ex. {0} becomes frank#1234  

* `name`  
* `mention`  
* `id`  
* `discriminator` - the user's #1234 number  
* `game`  
* `status` - online/offline/away  
* `joined_at` - the date the user joined the server  
* `created_at` - the date the user's account was created  
* `avatar_url` - the url for the user's profile picture  
* `voice_channel` - the voice channel the user is in. None if the user isn't in one  

#### server  
if no attribute specified, just shows the name. ex. {1} becomes Red - Discord Bot

* `name`  
* `id`  
* `member_count`  
* `afk_channel`  
* `afk_timeout`  
* `created_at`  
* `default_channel`  
* `region`  
* `icon_url`  
* `owner` - the server owner's member object. Has the same attributes as author does.  
* `me` - the bot's member object... Not sure why you'd want it, but it has the same attributes as author does.  

#### channel  
if no attribute specified, just shows the name. ex. {2} becomes general-chat

* `name`
* `id`
* `mention`
* `topic` - the channel's description
* `position` - the position the channel is in [comment]: # (please help me explain this better. or put an image to explain. #testing in Red is position 8. it's the 8th channel on the list.)
* `created_at` - the date that the channel was created

#### message
an attribute must be specified

* `timestamp` - the time the message was sent.
* `content` - the literal message. ex. `!announce` would be `!announce`

#### input *not implemented yet*  
if no attribute specified, just shows the content

* `content` - the literal message minus the prefix and command. ex. the input.content of `!announce The stream will be late today` would be `The stream will be late today`
* `mentions` - string of mentions. ex. input.mentions for `!announce @Kowlin and @Will suck` would be `@Kowlin @Will`
* `channel_mentions` - string of channel mentions. ex. `!announce @Kowlin come to #general` would give `#general`

#### target *not implemented yet*  
This has the same attributes as **author** would but for the targeted user

The member object of the 1st mentioned person. ex. `!display_help @Kowlin` would give the member object for Kowlin.
target is author if nobody is mentioned.

#### target_channel *not implemented yet*  
This has the same attributes as **channel** would but for the targeted channel

The channel object of the 1st mentioned channel. ex. `!topic #spam-a-lot` would give the channel object for the spam-a-lot channel.  
target_channel is channel if no channel is mentioned.



## Examples

* `!addcom kickme :boot: {author.name}`  
* `!addcom greet hi {author.mention}! welcome to {server.name}!`  
* `!addcom whereami? you're in {channel.name}.. dumby`  
* `!addcom id {author.id}`  
