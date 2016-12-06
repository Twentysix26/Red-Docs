---
title: Audio module
sidebar: red_sidebar
permalink: /red_audio/
---

*Work in progress*

## Voice channels

Red will automatically join the voice channel of whoever is issuing the audio command. Restrictions may apply in case queue mode is active *and* the bot is already playing music for other people.

## Local playlists

To make local playlists, open the localtracks folder located in data/audio. Every folder you make in localtracks counts as a different playlist and the name of the folder will be its name (no spaces allowed). Put as many mp3 / flac as you want in them.  
Then you can start it with:  
`[p]local start <playlist_name>`  
You can also list local playlists with:  
`[p]local list`
