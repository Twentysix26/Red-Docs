---
title: Timezone
sidebar: red_sidebar
permalink: /red_cog_timezone/
last_updated: April 23, 2016 
---

***Work in progress***

## What is timezone?

This is a cog that was highly requested on the support server, so it was made! Basically, it lists the time in just about any timezone in the world!

## What's supported currently?

## Commands

### !time tz

+ If left blank, shows the *system time* of the bot (may be different to your time if running on a VPS).
+ With arguments, will display the current time in a given location.
  + Format: `Continent/City`
  + Example usage: `!time America/New_York`

### !time me

Saves your timezone to a file.  
+ Has the same format as `!time tz`  
+ When used with no arguments, displays your timezone.

### !time user

Looks up a user's current time.  
+ Used like `!bank balance`  
+ e.g. `!time user @fishyfing`

### !time iso

Gets a supported timezone from an ISO3166 code.  
+ `!time iso code`  
+ e.g. `!time iso GB`