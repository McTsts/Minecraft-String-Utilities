# String Parsing
String parsing is the method of turning a string into a char array (i.e. an array of strings with a length of one).  
For example, string parsing would turn the string `"abc"` into `["a","b","c"]`.

This repository hosted the first string parser, however you should now use [Suso's general string parser](https://github.com/5uso/String-Parser) instead.

**Table of Contents**
- [History](#history)
- [Implementations](#implementations)
- [Examples & Utilities](#examples--utilities)
- [Explanation](#explanation)
- [Credits](#credit)

## History
On 2019-12-02 in the Minecraft Version `1.15 Pre-release 4` the bug [MC-157426](https://bugs.mojang.com/browse/MC-157426) was fixed, which finally allowed string parsing.  
Shortly afterwards, the first string parser was made and published in this repo. 

Since 2022-01-19 the string parser on this repo is no longer relevant and has been replaced by the faster suso string parser, instead you can now find general info about string parsing here. 

![image](https://user-images.githubusercontent.com/24660095/150363277-21bf42b0-d3c7-4464-93a2-e0014fcc1dfd.png)


## Implementations
The original string parser (`strings`, which is featured in this repo) is no longer the recommended to be used. Instead the [Suso's general string parser](https://github.com/5uso/String-Parser) should be used.

### General String Parser
`suso.str` [link](https://github.com/5uso/String-Parser): This implements all the features of the 4 deprecated string parsers and more. You should use this string parser for anything that requires string parsing.

### Deprecated
*These string parsers are deprecated and should no longer be used.*   
`suso.str (Old)` [link](https://github.com/5uso/String-Parser/tree/c9cd23e3afc091b14c357b281d375632672b60f3): fast, can parse anything except `"`, `!` and ` `  
`suso.str_heads` [link](https://github.com/5uso/Head-Parser): fastest, can parse only skulls  
`suso.str (Ts Fork)` [link](https://github.com/McTsts/String-Parser): average, can parse anything (including `"`, `!` and ` `)  
`strings` (deprecated): slow, parses only a set of 96 characters, including `"`, `!` and ` `  

## Examples & Utilities

### Utilities
Here's some utilities that are useful in combination with string parsing:
- JSON Parser ([repo](https://github.com/McTsts/json-parser))
- Base64 Parser ([link](https://github.com/McTsts/Minecraft-String-Utilities/tree/master/old/base64))
- Unix Timestamp Parser ([link](https://github.com/McTsts/Minecraft-String-Utilities/tree/master/old/applications/data/application_unix/functions))

### Examples
Here's some examples of what this could or has been used for:
- Parsing Player Input[¹](#parsing-player-inputs) ([showcase video](https://www.youtube.com/watch?v=F89pYoNe6XU&list=PLY95XT5aSE-slsxs8X8_Oe7HJ9E2ZOJpk&index=3))
- Detecing Player Skin Changes[²](#obtain-player-data)
- Detecing Player's Capes / Model[²](#obtain-player-data) ([showcase video](https://www.youtube.com/watch?v=F89pYoNe6XU&list=PLY95XT5aSE-slsxs8X8_Oe7HJ9E2ZOJpk&index=3))
- Getting unix timestamp[²](#obtain-player-data) ([showcase video](https://www.youtube.com/watch?v=F89pYoNe6XU&list=PLY95XT5aSE-slsxs8X8_Oe7HJ9E2ZOJpk&index=3))
- Parsing JSON ([explanation video](https://www.youtube.com/watch?v=XP5BtvSiMAY))
- TTS ([explanation video](https://www.youtube.com/watch?v=y4nBIbtooZ4&feature=youtu.be))
- Skull DLC[²](#obtain-player-data) ([showcase video](https://www.youtube.com/watch?v=lP0uTkLcd3w))
- Simplified Skull DLC[²](#obtain-player-data) ([showcase video](https://www.youtube.com/watch?v=3KMC_4a2Phk))
- Putting Player Names on shields[³](#obtaining-player-names) ([explanation video](https://www.youtube.com/watch?v=oYZk4ok6Sfc))
- Syncing to Real Time[⁴](#commandblock-output) ([explanation video](https://www.youtube.com/watch?v=vzPvSE8Z8r8))
- Informing a datapack when it's outdated[²](#obtain-player-data)
- Determining the width of a string[⁵](#getting-width)
- Getting the seed[⁴](#commandblock-output)
- Offbrand Players[³](#obtaining-player-names) ([image](https://raw.githubusercontent.com/McTsts/Minecraft-String-Utilities/master/images/offbrand_player.png))
- Replacing player names[⁵](#getting-width)

#### Parsing Player Inputs
String parsing provides an easy way to parse player inputs, especially by using signs and books. You can simply copy the string from these into the string parser. It should be noted that server-side books and signs only update once you close them.

#### Obtain Player Data
When you create a player skull it will load some player data as a Base64 encoded string. For example this Base64 value in my skill would be:
```
ewogICJ0aW1lc3RhbXAiIDogMTY0MzA2MzE3Njc1MywKICAicHJvZmlsZUlkIiA6ICJhNDM5YzU5YjI5ZDQ0MzkwOWM5OTJlYTk1ODlhZmI0YyIsCiAgInByb2ZpbGVOYW1lIiA6ICJfdHN0c18iLAogICJ0ZXh0dXJlcyIgOiB7CiAgICAiU0tJTiIgOiB7CiAgICAgICJ1cmwiIDogImh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvMWJiZGI3ZTNkMTg2YzE0OGZkM2Y2MGNmODM0YjlmMmE5NzNlNTkwNjEyODg3YzgxMmUxN2I1OGRiZWEyOTUxOCIKICAgIH0sCiAgICAiQ0FQRSIgOiB7CiAgICAgICJ1cmwiIDogImh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvMTc5MTI3OTBmZjE2NGI5MzE5NmYwOGJhNzFkMGU2MjEyOTMwNDc3NmQwZjM0NzMzNGY4YTZlYWU1MDlmOGE1NiIKICAgIH0KICB9Cn0=
```
By first string parsing this value and then Base64 encoding it, we can obtain the following data:
```json
{
  "timestamp" : 1643063176753,
  "profileId" : "a439c59b29d443909c992ea9589afb4c",
  "profileName" : "_tsts_",
  "textures" : {
    "SKIN" : {
      "url" : "http://textures.minecraft.net/texture/1bbdb7e3d186c148fd3f60cf834b9f2a973e590612887c812e17b58dbea29518",
      "metadata" : {
        "model" : "slim"
      }
    },
    "CAPE" : {
      "url" : "http://textures.minecraft.net/texture/17912790ff164b93196f08ba71d0e62129304776d0f347334f8a6eae509f8a56"
    }
  }
}
```
`profileId` and `profileName` aren't very useful as we can obtain this value more easily. However this decoded data gives us access to four interesting things:
- `timestamp`, the unix timestamp
- `textures.SKIN.url`, the url of the player's skin (the same value for players with the same skin)
- `textures.SKIN.metadata.model`, the model of the players skin (metadata is only set for Alex model, for Steve model no value is present instead)
- `textures.CAPE.url`, the url of the player's *currently enabled* cape (the same value for players with the same cape)

Outside of the obvious uses, this can be used to detect when a player's skin changes (e.g. the *creator's* skin. You could use this to inform older versions of maps/datapacks that they're outdated by changing skin when a new version comes out). You can go further and change skin a bunch of times, save the skin urls and then have a look up table where each skin means something specific. In Skull DLC we use a very advanced method of this to allow 2^32 (4294967296) different values.
You can also use both the cape (everyone has at least the migrator cape, so you always can turn that on and off) and the model as 2 easy bits of data you can transmit.

Because skulls load asynchronously, you can't just place it and immediately parse it. You need to wait until it's loaded, however Suso's General String Parser provides a builtin function to do this for you.

### Obtaining Player Names
You can obtain player names as a char array, by using the [player head loottable](https://github.com/MinecraftPhi/MinecraftPhi-modules/blob/master/phi.playerinfo/src/datapack/data/phi.playerinfo/loot_tables/get_head.json) and then copying the name from the created skull into the string parser. You then can do various things with the player's name.

### Commandblock Output
You can also use string parsing to get data from commandblock outputs you can't otherwise access. For example the time at the start of every command (e.g. `/help me`, the time is not the same as unix timestamp, the command block time is a) local time and b) only hours/minutes/seconds) as well as the output of `/seed`. To do this you would first execute the command in a command block, then copy the `LastOutput` of this command into the string parser. This process can be optimized a lot by using a prep string, max chars and limiting the char set it searches for.

### Getting Width
Getting the length of a non-JSON string is just a matter of parsing it and then using a look-up table for all characters you want to support. You then add up the widths of all characters (while respecting that the gap between characters is 1 pixel).  

You can for example use this to determine the length of a player name, then using [negative spaces](https://github.com/AmberWat/NegativeSpaceFont) in team prefix/suffixes to replace the player name with a different text.

Getting the length of a JSON string is a fairly convoluted process. You first need to string parse the string, then [JSON parse](https://github.com/McTsts/json-parser) it, then extract all characters from the JSON, while separating bold and non-bold characters. You use the same look-up table process as for normal strings, with the exception, that all bold characters are 1 pixel wider than the non-bold variant.  


## Explanation

### Main System

#### (1) General Idea
To parse a string into a char array, string parsing abuses the fact that the `tag list` command, sorts it's output alphabetically. By "guessing" a string and then comparing it to the string we are trying to parse, we can slowly binary search our way to the original input string.  

#### (2) LastOutput
Since the `tag list` commands return value is the amount of tag, we can't easily access the sorted tag list. The only way to access this sorted list is by executing the command from a command block, which will the return the sorted tag list as part of its `LastOutput`, albeit inside a bunch of JSON.

The `tag list` `LastOutput` of an entity called `_tsts_`, with the tags `x`, `y` and `z`, would *look* something like this to the user:

`[13:29:32] _tsts_ has 3 tags: x, y, z`

but in reality the actual value of the `LastOutput` looks more like this:

![image](https://user-images.githubusercontent.com/24660095/150364630-834b8622-028e-4d7c-b1af-d5f08f6a1a74.png)

In the middle of this are the three tags, sorted:

![image](https://user-images.githubusercontent.com/24660095/150364756-7fb863ee-599b-4561-90d5-fa80b93bac2c.png)

Unfortunately, since this uses command blocks, string parsing has to use them. To be able to go through as many iterations of the `tag list` (and other) commands as we want, we have to use a [Command Block Loop](#command-block-loop).

#### (3) Binary Search
With the help of the sorted tag list output from the previous step, we can now binary search our way to the actual string.  
For this we [put our input string](#modifying-tags) as well as a guess onto an entity, and then run `tag list` on the entity.  
The entity will sort the the tags and we can tell whether our guess is too high or too low in the alphabet.

The guess always consists out of all already found characters (at the start none) and a single character we are guessing.  
For every character we are guessing, we pick the character in the middle of the range of possible characters.  

For example if the whole range is all the lower case characters  
![image](https://user-images.githubusercontent.com/24660095/150366144-b37dad81-6d5c-4dce-b79d-6f5f4a6b9157.png)  
We would start by guessing `n` as it is in the middle of the range  
![image](https://user-images.githubusercontent.com/24660095/150366237-245cd97a-09f4-4a99-92da-a689adc16c03.png)  

If our input string is `"xyz"` and we start by guessing `"n"`, `tag list` will sort `"n"` to before `"xyz"` and we will know that we need to guess higher. The range of possible characters is now all characters above `n` and in the middle of that is `t`, our next guess.  
![image](https://user-images.githubusercontent.com/24660095/150366552-378175e7-66e3-4015-bd58-31d8950e1901.png)  

Eventually, only a single character would remain in the range of possible characters, and we would know that we have found the right character (i.e. `x`), we then add this character to our already found characters and continue guessing with `"xn"`, then `"xt"`, etc.  

This way we can slowly get the entire input string.

#### (4) Flattening

Unfortunately, there is an issue with the previous step. Our input string would be, well a string (e.g. `"xyz"`), while our found characters would be an array of characters (e.g. `["x","y"]` after finding the first two). This means we can't actually compare these two and our binary search won't work.  
To work around this the array needs to be flattened into a string (`["x","y"]` => `"xy"`), however Minecraft doesn't really have a method of string flattening.  

The only way to flatten strings is to use [Enchant Flattening](#enchant-flattening)

To do this, first we convert our NBT Array of characters into JSON (by putting it on a sign with `{"nbt":"<path>","storage":"<storage>","interpret":true`) which will return something like `{"text":"x","extra":[{"text":"y"},{"text":"z"}]}`, then we copy this onto an entity's name (signs support [Component Resolution](#component-resolution), but entities do not). And then use [enchant flattening](#enchant-flattening), afterwards our string will have turned into something like:  

![image](https://user-images.githubusercontent.com/24660095/150368778-a8c594ab-e139-4a99-bfb3-fad35c8842f0.png)  
Our array has now been flattened into a string, though it is in the middle of a JSON string and we cannot extract it.  
To solve that we simply also enchant flatten the original input string, which wil return the same result.

We can now copy both enchant flattened strings onto an entity, use `tag list` as described before and binary search this way.

#### (5) Reading Result
One more problem arises when trying to read the output of `tag list`. Since the output value is also a string, we don't actually know which of our values sorted first.

To figure out which value sorted first, we have to create a fake `tag list` output that matches one of the two possible results we expect. We can enchant flatten our fake output as well as the real fake output, and then we copy the real output ontop of the fake output. If they are the same the operation will fail, otherwise it will succeed. This way we can know which way our strings sorted.

#### (6) Constructing Fake Ouput
Because the output of the `tag list` command contains the name of the entity, its UUID and the current time, constructing the fake output is fairly convoluted.  

First we need to add a tag `"a, b, c"` (its one tag) to our entity in the binary search step, this tag will always sort first (since the strings we are comparing are JSON strings and both start with `{`) and thereby doesn't affect the result. The exact name of this `"a, b, c"` tag is irrelevant, what matters is that it looks like it as 3 tags (when it really is just one).  
Now the output of binary search will look something like: `<entity> has 3 tags: a, b, c, <string #1>, <string #2>`

To create our fake output we first remove all the tags from the entity used by the binary search (has to be the same one!), and then add 3 separate tags, `a`, `b` and `c`, then run the `tag list` command for it. We will receive an output that looks something like this: `<entity> has 3 tags: a, b, c`  
You might already see where this is going. We now append `, `, string #1, `, ` and string #2 to it, to get a string that *looks* the same as our real output. 

Construction:  
![image](https://user-images.githubusercontent.com/24660095/150372549-bfe7f9c9-27c7-4fa7-a08e-7504900d6719.png)
![image](https://user-images.githubusercontent.com/24660095/150372649-b7e5e34d-8a36-4d40-8f8c-9e4e60aace87.png)

Then we use enchant flattening (on both the fake and real output) and our fake output will have the exact same format as the real one.

#### (7) Minor Things

##### Detecting when the string has completely been found
When the full string has been found, the return value (the integer) will be 2 (one of those being `a, b, c`) instead of 3 since both the input string as well as the current guess will be the same. In this case we know our current guess is right, and that we are done string parsing.

##### Time in LastOutput
The `LastOutput` of commands always contains the current time, so if the current time changes this might mean that two `LastOutput`s that should be same are no longer the same. To avoid this we use `help`'s feedback to see if the [time has changed](#help-timing). If the time has changed during one iteration, we ignore anything found during this iteration and restart it. 

#### Parsing Quotes
When a quote is in the input, it would mess up the list of characters when found. e.g. when we find `"` as the second character our list of found characters might be: `["a",'"']`. The important thing here is that `"`'s are automatically surrounded by single quotes, instead of by double quotes, like every other character. Now this NBT array is no longer valid JSON and can't be interpreted anymore (which is required to put it on an entity name, to enchant flatten it, to use `tag list` on it). 
Originally we used the help of a sign to solve this issue, however I finally found a much better method, instead of using interpret we simply use: `{"nbt":"array[]","storage":"storage","interpret":true,"separator":""}`

Additionally quotes are represents as `\"`, meaning we always have to search for `\"` instead. This means `\"` does *not* sort like you'd expect from `"` instead it sorts right before `\\`

#### Parsing Exclamation Mark & Space
`!` and ` ` are the only two characters that sort before `"`. Since each string ends with a `"`, those two characters will mess up the sorting if contained in a string. This can be solved by appending as many spaces to both the input and each guess, as the maximum expected amount of consecutive spaces and exclamation marks.

#### Parsing Backslash
To search for `\` you have to search for `\\` instead. This sorts *after* `\"` (see quotes)

#### Parsing Newline
You can search for newlines by searching for `\n` (sorts after `\\`), however you can't easily obtain a string with a value of `\n`. To obtain it, open a writable book, type enter, close the book, and copy the contents of the first page of the book into storage. Now, when you want to search for newline copy this newline string into the right spot in your input character array.

### Tricks Used

### Command Block Loop
Command blocks can be arrange in a loop (e.g. a 2x2 loop of chain command blocks, with an impulse command pointing into them to start the loop), usually command blocks will only try to run once per tick, however by setting their `UpdateLastExecution` value to `0` they will "forget" that they've already ran a command, and will be able to run another one.   
So if you reset the `UpdateLastExecution` of all command blocks in the loop at the end of every loop iteration, you will be able to have a basically infinite command block loop.

### Enchant Flattening
When the enchant command fails, the `LastOutput` of a command block executing the command will contain a flattened version of the entity name.

For example using `enchant 00000000-0073-9653-0000-000000000002 minecraft:aqua_affinity` on an entity called `"xyz"`, will return `'{"extra":[{"color":"red","extra":[{"translate":"commands.enchant.failed.entity","with":["xyz"]}],"text":""}],"text":"[02:13:53] "}'`

### Component Resolution
Resolution of `nbt` components can only easily be done by signs.

### Help Timing
`help` subcommands always return the same output. `help me` returns the shortest `LastOutput` (i.e. `[<timestamp>] /me <action>`), and should thereby be the most efficient

### Modifying Tags
Tags can be added and removed from entities by using the `data` command and modifying the `Tags` value of an entity. Tags added this way can contain characters that aren't valid in the `tag` command.

## Credit

##### Made by:

- McTsts > Original String Parser
- Suso > String Parser
- gibbsly > Base64 & JSON Parser (included in this repo)

###### Additional Credit:

- Zonteek > Time from Command Block Concept
- SirBenet > `"a, b, c"` tag step explanation
- Onnowhere > `/help` step idea
- Oskar > Asking the devs about the `tag list` bug ([MC-157426](https://bugs.mojang.com/browse/MC-157426))
- Asometric > Moral Support
