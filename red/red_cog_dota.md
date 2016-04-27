---
title: Dota
sidebar: red_sidebar
permalink: /red_cog_dota/
---

## Installation

### Requirements

Dota 2 cog relies on a couple of external libraries, you will need to install those.

```
pip3 install bs4
pip3 install dota2py
pip3 install tabulate
```

### Dota 2 API

Dota 2 api requires a key to get data from it. You can [**get one here**](http://steamcommunity.com/dev/apikey)

When you got your key, you need to set it using a `[p]dota setkey` command. It **only** works in PM, don't use it in a public channel.

Example: `[p]dota setkey 8213fsdf2dsf2fs`

*Optional:* You can use an ENV variable named `DOTA2_API_KEY` to store your key. That is done to prevent key storage in text-based files and accidential deletions.
[*If you don't know how to set ENV variable, follow this guide*](https://github.com/orels1/docs/blob/master/Misc/setting-env-variables.md )

### Loading your cog

After installing all the requirements and setting your api key, you need to type `[p]cog install dota` in discord, so your bot will download and install the cog. `[p]` should be replaced by your prefix.

## Usage

### Commands

When enabled, Dota 2 cog provides a set of commands, all of which should follow parent `dota` command.

Example: `[p]dota online` to get the amount of players in Dota 2 at the moment.

#### setkey

**Description:**

Sets the Dota 2 API key, works **only** in PM

**Arguments:** 

 * key

**Example usage:** 

`[p]dota setkey 88dfsdf23fsdf243efd`

**Example result:**

```
Key set and applied
```

#### online
**Description:**

Returns current amount of players

**Arguments:** 

None

**Example usage:** 

`[p]dota online`

**Example result:**

```
935,287 players are playing this game at the moment
```

#### hero

**Description:**

Shows some info about hero

**Arguments:**

 * hero name

**Example usage:**

`[p]dota hero axe`

**Example result:**

```
Axe (Melee)
This hero's stats:

╒═══════════╤═════════╤════════════╕
│ Stat      │ Value   │ Gain/lvl   │
╞═══════════╪═════════╪════════════╡
│ HP        │ 655     │ 47.50      │
├───────────┼─────────┼────────────┤
│ [MP]      │ 234     │ 30.40      │
├───────────┼─────────┼────────────┤
│ AGI       │ 20      │ 2.2        │
├───────────┼─────────┼────────────┤
│ STR       │ 25      │ 2.5        │
├───────────┼─────────┼────────────┤
│ INT       │ 18      │ 1.6        │
├───────────┼─────────┼────────────┤
│ Damage    │ 53~61   │            │
├───────────┼─────────┼────────────┤
│ Armor     │ 1.8     │ 0.31       │
├───────────┼─────────┼────────────┤
│ Movespeed │ 290     │ 2.2        │
╘═══════════╧═════════╧════════════╛

Also you might consider buying 2 boots, because this hero, apparently, has 2 legs! ;)
```

#### build

**Description:**

Gets the most popular skillbuild for a hero from Dotabuff.
**Important:** breaks the build into separate messages to not exceed discord's limits

**Arguments:**

 * hero name

**Example usage:**

`[p]dota build axe`

**Example result:**

```
The most popular build at the moment, according to Dotabuff:

╒══════════════════╤═════╤═════╤═════╤═════╤═════╤═════╕
│ Skill/Lvl        │ 1   │ 2   │ 3   │ 4   │ 5   │ 6   │
╞══════════════════╪═════╪═════╪═════╪═════╪═════╪═════╡
│ Berserker's Call │     │ X   │     │     │     │     │
├──────────────────┼─────┼─────┼─────┼─────┼─────┼─────┤
│ Battle Hunger    │     │     │     │ X   │     │     │
├──────────────────┼─────┼─────┼─────┼─────┼─────┼─────┤
│ Counter Helix    │ X   │     │ X   │     │ X   │     │
├──────────────────┼─────┼─────┼─────┼─────┼─────┼─────┤
│ Culling Blade    │     │     │     │     │     │ X   │
├──────────────────┼─────┼─────┼─────┼─────┼─────┼─────┤
│ Attribute Bonus  │     │     │     │     │     │     │
╘══════════════════╧═════╧═════╧═════╧═════╧═════╧═════╛

╒══════════════════╤═════╤═════╤═════╤══════╤══════╤══════╕
│ Skill/Lvl        │ 7   │ 8   │ 9   │ 10   │ 11   │ 12   │
╞══════════════════╪═════╪═════╪═════╪══════╪══════╪══════╡
│ Berserker's Call │     │ X   │ X   │ X    │      │      │
├──────────────────┼─────┼─────┼─────┼──────┼──────┼──────┤
│ Battle Hunger    │     │     │     │      │      │ X    │
├──────────────────┼─────┼─────┼─────┼──────┼──────┼──────┤
│ Counter Helix    │ X   │     │     │      │      │      │
├──────────────────┼─────┼─────┼─────┼──────┼──────┼──────┤
│ Culling Blade    │     │     │     │      │ X    │      │
├──────────────────┼─────┼─────┼─────┼──────┼──────┼──────┤
│ Attribute Bonus  │     │     │     │      │      │      │
╘══════════════════╧═════╧═════╧═════╧══════╧══════╧══════╛

╒══════════════════╤══════╤══════╤══════╤══════╤══════╤══════╕
│ Skill/Lvl        │ 14   │ 15   │ 16   │ 17   │ 18   │ 19   │
╞══════════════════╪══════╪══════╪══════╪══════╪══════╪══════╡
│ Berserker's Call │      │      │      │      │      │      │
├──────────────────┼──────┼──────┼──────┼──────┼──────┼──────┤
│ Battle Hunger    │ X    │ X    │      │      │      │      │
├──────────────────┼──────┼──────┼──────┼──────┼──────┼──────┤
│ Counter Helix    │      │      │      │      │      │      │
├──────────────────┼──────┼──────┼──────┼──────┼──────┼──────┤
│ Culling Blade    │      │      │      │ X    │      │      │
├──────────────────┼──────┼──────┼──────┼──────┼──────┼──────┤
│ Attribute Bonus  │      │      │ X    │      │ X    │ X    │
╘══════════════════╧══════╧══════╧══════╧══════╧══════╧══════╛
```

#### items

**Description:**

Gets the most popular items for a hero from Dotabuff

**Arguments:**

 * hero name

**Example usage:**

`[p]dota items axe`

**Example result:**

```
The most popular items at the moment, according to Dotabuff:

╒════════════════════╤═══════════╤═══════════╕
│ Item               │ Matches   │ Winrate   │
╞════════════════════╪═══════════╪═══════════╡
│ Blink Dagger       │ 578,364   │ 47.64%    │
├────────────────────┼───────────┼───────────┤
│ Blade Mail         │ 531,536   │ 47.86%    │
├────────────────────┼───────────┼───────────┤
│ Tranquil Boots     │ 510,862   │ 42.33%    │
├────────────────────┼───────────┼───────────┤
│ Vanguard           │ 271,073   │ 44.48%    │
├────────────────────┼───────────┼───────────┤
│ Crimson Guard      │ 221,435   │ 53.35%    │
├────────────────────┼───────────┼───────────┤
│ Heart of Tarrasque │ 176,455   │ 66.18%    │
├────────────────────┼───────────┼───────────┤
│ Town Portal Scroll │ 140,224   │ 34.60%    │
├────────────────────┼───────────┼───────────┤
│ Aghanim's Scepter  │ 97,125    │ 62.81%    │
├────────────────────┼───────────┼───────────┤
│ Boots of Travel    │ 87,347    │ 71.35%    │
├────────────────────┼───────────┼───────────┤
│ Magic Wand         │ 73,943    │ 35.34%    │
├────────────────────┼───────────┼───────────┤
│ Stout Shield       │ 61,780    │ 20.07%    │
├────────────────────┼───────────┼───────────┤
│ Pipe of Insight    │ 50,627    │ 54.03%    │
╘════════════════════╧═══════════╧═══════════╛
```

#### recent

**Description:**

Gets the link to player's latest match

**Arguments:**
 * Steam name or ID, can be seen in the URL of steam profile page

**Example usage:*

`[p]dota recent orels`

**Example result:**

```
Showing the most recent match for orels (match id: 2218393999)
RADIANT WON [0:47:26]

╒════════════════╤═════════╤══════════════════╤═════════╕
│ Radiant Team   │ K/D/A   │ Dire Team        │ K/D/A   │
╞════════════════╪═════════╪══════════════════╪═════════╡
│ Ogre Magi      │ 12/5/10 │ Undying          │ 7/11/19 │
├────────────────┼─────────┼──────────────────┼─────────┤
│ Luna           │ 8/6/19  │ Tiny             │ 8/8/15  │
├────────────────┼─────────┼──────────────────┼─────────┤
│ Bounty Hunter  │ 4/7/14  │ Morphling        │ 6/8/12  │
├────────────────┼─────────┼──────────────────┼─────────┤
│ Pudge          │ 12/7/12 │ Templar Assassin │ 9/11/9  │
├────────────────┼─────────┼──────────────────┼─────────┤
│ Dark Seer      │ 5/7/18  │ Enchantress      │ 0/5/1   │
╘════════════════╧═════════╧══════════════════╧═════════╛

Dotabuff match link: http://www.dotabuff.com/matches/2218393999
```

---

All the suggestions or issues [can be reported here](https://discord.gg/0mwMe1kyZVpng2ms).