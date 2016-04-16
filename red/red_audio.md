---
title: Audio module
sidebar: red_sidebar
permalink: /red_audio/
---

*Work in progress*

## Voice channels

Red will automatically join the voice channel of whoever it's issuing the command. Restrictions may apply in case queue mode is active *and* the bot is already playing music for other people.

## Queue mode

Queue mode forces the use of queue whenever possible/necessary. It also restricts a variety of commands if other people are already present.  Admins and mods are immune to it. Skipping is possible only through skip vote.  
Queue mode can be disabled with  
`[p]audioset queuemode`  
Requires mod permissions or superior.

## Local playlists

To make local playlists, open the localtracks folder located in data/audio. Every folder you make in localtracks counts as a different playlist and the name of the folder will be its name (no spaces allowed). Put as many mp3 / flac as you want in them.  
Then you can start it with:  
`[p]local <playlist_name>`

## Cache

Red downloads every track you play in data/audio/cache. After a while the folder will inevitably get big.
There are various commands to manage it:  
`[p]cache` Shows current cache size  
`[p]cache empty` Empties the cache  
`[p]audioset maxcache` Sets the maximum size of the cache (in megabytes). After reaching it, the cache will empty automatically. If set to 0, auto cleanup is disabled.