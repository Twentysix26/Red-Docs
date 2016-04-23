---
title: Timezone
sidebar: red_sidebar
permalink: /red_cog_timezone/
---

***Work in progress***

## What is timezone?

This is a cog that was highly requested on the support server, so it was made! Basically, it lists the time in just about any timezone in the world!

## What's supported currently?

#### Implemented

- [x] !mytime command - Displays your current timezone
- [x] !time command - Displays system time/global times
- [x] Time in cities across the globe
- [x] Displays UTC offset

#### Planned

- [ ] ISO3166 country code lookup e.g. GB
- [ ] 3 Letter timezone code lookup e.g. GMT
- [ ] Display user's current time using !mytime
- [ ] Display another user's time e.g. `!mytime @irdumb`
- [ ] Settable date format

## Commands

### !time

+ If left blank, shows the *system time* of the bot (may be different to your time if running on a VPS).
+ With arguments, will display the current time in a given location.
  + Format: `Continent/City`
  + Example usage: `!time America/New_York`

### !mytime

Saves your timezone to a file.
+ Has the same format as `!time`
+ When used with no arguments, displays your timezone.