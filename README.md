# String Parsing
Datapacks that implement string parsing and various related functionalities.

Here's an explanation of *how* this works: 
https://docs.google.com/document/d/15Va-tUmoMhrajIbZFhZNWKGKYWvWQMv4spxkHr877ps


This is the very first implementation of string parsing, there are now better string parsers for all situations.  
Instead use `suso.str` or `suso.str_heads` if you can, both of these are significantly faster than `strings`.  
https://github.com/5uso/String-Parser (`suso.str`)  
https://github.com/5uso/Head-Parser  (`suso.str_heads`)  
https://github.com/McTsts/String-Parser (`suso.str` (Ts Branch))  
  
**Comparison**  
`suso.str_heads`: fastest, can parse only skulls  
`suso.str`: fast, can parse anything except `"`, `!` and ` `  
`suso.str` (Ts Branch): average, can parse anything (including `"`, `!` and ` `)  
`strings`: slow, parses only a set of 96 characters, including `"`, `!` and ` `  
    
  
  
        
        
        
          
  
  
  
  
  
  
  
  
## Modules
###### Ts
If you're looking for just string parsing this the thing you'll need:
- [strings](https://github.com/McTsts/Minecraft-String-Utilities#module---strings): Reads strings into char arrays - STRING PARSING

It's recommended to also look at this one for examples:
- [examples](https://github.com/McTsts/Minecraft-String-Utilities#module---examples): Has some example functions (Ts)

These namespaces aren't relevant for string parsing directly - they're usages for it (these are used by the examples datapack):
- [strings/substring](https://github.com/McTsts/Minecraft-String-Utilities#module---stringssubstring): Can create "substrings" of char arrays
- [strings/case](https://github.com/McTsts/Minecraft-String-Utilities#module---stringscase): Has to lower, to upper case and get case functions
- [strings/ntca](https://github.com/McTsts/Minecraft-String-Utilities#module---stringsntca): Converts a number into a char array
- *[strings/regex](https://github.com/McTsts/Minecraft-String-Utilities#module---stringsregex): WIP part for a regex module*
- [application/name](https://github.com/McTsts/Minecraft-String-Utilities#module---applicationname): Shortens names using a set of rules, for occasions where messages may require names below a certain length

###### Gibbs
These packs are useful when you're trying to do string parsing with skulls:
- [base64](https://github.com/McTsts/Minecraft-String-Utilities#module---base64): converts an array of base64 chars into an array of ascii chars 
- [parser](https://github.com/McTsts/Minecraft-String-Utilities#module---parser): parses an array of chars formatted as a json object into name/value pairs 
- [application/cape](https://github.com/McTsts/Minecraft-String-Utilities#module---applicationcape): Detects which cape (if any) a player has


###### Suso
- [application/unix](https://github.com/McTsts/Minecraft-String-Utilities#module---applicationunix): Converts unix timestamps into dates/times 


## Module - Strings
#### Explanation
Converts a String into a Char Array.

#### Basic Instructions
1. `data modify storage string:io queue append value {string:"abcde"}` to put in a string
2. `function string:call` to read the string
3. `data get storage string:io out` to get the char array

#### Advanced Instructions
###### Callback
1. Replacement for Step 1: `data modify storage string:io queue append value {string:"abcde",callback:{command:"function example:test",id:1}}`
2. When the string is completely read the function in 'callback.command' is called and the score of '$callback string' is set to 'callback.id'. Both values are optional (see examples 3-4)
3. Several strings can be handelled after each other with a queue by using Basic Step 1 and Step 2 several times after one another (see example 4)
###### Error Callback
1. An error callback can also be specified: `data modify storage string:io queue append value {string:"abcde",callback:{command:"function example:test",id:1,error:"function example:error"}}` 
2. The error callback works the same way as the normal callback does, but doesn't use an id. You can use just one of the two callbacks without the other one, or both at the same time. Currently the error callback is only called when max iterations (a dynamically calculated internal value) is hit, this generally means that the input contains an invalid character.
###### Async
1. Replacement for Step 1: `data modify storage string:io queue append value {string:"abcde",async:{iterations:10}}`
2. After 'async.iterations' iterations the module stops processing and continues in the next tick. Can be combined with callbacks and the callback will be called once the entire string has been processed.
###### Parallel
1. Replacement for Step 1: `data modify storage string:io queue append value {string:"abcde",async:{iterations:10,parallel:1}}`
2. After 'async.iterations' iterations the module stops processing and continues in the next tick. The callback is called every tick with everything found in that tick, as well as once at the end with the entire string. This allows parallely already doing something with the start of the string while the rest of the string is still parsing.
###### Known Output
1. Replacement for Step 1: `data modify storage string:io queue append value {string:"test:abcde",ignore:"test:"}`
2. The string provided in 'ignore' will be skipped when constructing the comparison string.
###### Character Limit
1. Replacement for Step 1: `data modify storage string:io queue append value {string:"abcdetest",maxchars:5}`
2. After 'maxchars' chars have been found, the search will be interrupted.

## Module - Strings/Substring
#### Instructions
1. `data merge storage substring:io {in:{string:["a","b","c"],start:0,length:2}}` input
2. `function substring:call` to execute
3. `data get storage substring:io out` to get a char array of the substring
4. Start determines where the substring starts, length determines how long it is
5. Negative start, starts counting from the end instead (start=-1 starts at the last character)
6. Negative length is equal to (string length)+(length) (length=-1 for a 10 character string would be 9)
7. The char array for this function can be generate using the Strings module and put into this module via a callback (see Examples 8 and 9)

## Module - Strings/Case
Changes the case of a string.

## Module - Strings/NTCA
#### Explanation
Converts a Number into a Char Array.

#### Instructions
1. `data modify storage ntca:io in set value 1314` to input
2. `function ntca:call` to run 
3. `data get storage ntca:io out` to get output

## Module - Strings/Regex
*Module not final*

## Module - Examples
This module just provides a bunch of function to showcase the functionality/possible uses of string parsing.

## Module - Application/Name
*Explanation is coming soon*

## Module - Base64
#### Basic Instructions
1. `/data modify storage base64:io in set value ["S", "G", "V", "s", "b", "G", "8", "g", "V", "2", "9", "y", "b", "G", "Q", "h"]`
2. `/function base64:call`
3. `/data get base64:io out` to read the output

#### Other Instructions
- `/function print:call` converts an array of bytes in the `storage ascii:main bytes` into ascii characters (ascii values 32 to 126)

## Module - Parser
#### Basic Instructions
1. `/data modify storage parse:io in set value ["{",'"',"a",'"',":",'"',"b",'"',"}"]`
2. `/function parser:call`
3. `/data get storage parse:io out` to read the output

#### Numbers
1. numbers longer than 9 digits are displayed in a specific way, for example the number `-3234567.8901` would be displayed as `{pol:-1,num:[3, 2, 3, 4, 5, 6, 7, 8, 9, 0, 1],dec:4,base:10}` and if it is not in an array it's type would be `"long_number"`
2. the format for long numbers is `{pol:1/-1,num:[],dec:0,base:10}` (the same that is used for [this utility](https://github.com/gibbsly/mc-floating-point-arithmetic))
- `pol` is `-1` if the number is negitive, and `1` if it is positive
- `num` is the digits in order
- `dec` is the position of the decimal point from the right

#### Other info
- Integrated with this module is a base(x) converter, instructions for its use can be found [here](https://github.com/gibbsly/fantastic-palm-tree)
- The output of this is formatted in name/value pairs inside of an output array, the notation is `{Value:[],Type:"",Extra:[],Name:[]}` Minecraft itself orders the data like this, I do not have any control over how the data is ordered inside of the pair itself.
- escape characters are avalible, you are going to want to escape any qotes (`"`) within the name or value entires. To enter a backslash (`\`) into a char array you need to use 2, so `"\\"`.

## Module - Application/Cape
*Explanation is coming soon*

## Module - Application/Unix
Important Note: This module only works for nonnegative 32-bit unix timestamps; i.e those representing dates from 1970-01-01 to 2038-01-19
#### Instructions
1. Input unix timestamp in seconds: `scoreboard players set $second aplication_unix 1575491054`
2. Run `function application_unix:call`
3. Outputs as scores: Objective `aplication_unix` for players `$day`, `$month`, `$year`, `$hour`, `$minute`, `$second`, `$weekday` (0 for Thursday, 6 for Wednesday)
4. Outputs as CustomNames: month: `@e[type=minecraft:armor_stand,tag=month,tag=aplication_unix]`, weekday: `@e[type=minecraft:armor_stand,tag=weekday,tag=aplication_unix]`
5. `function aplication_unix:print` shows the result

## Conventions

#### Storage
`<module>:io in` Input (data modify set)
`<module>:io queue` Input Queue (data modify append/prepend/insert)
*either use in or queue*  *(required)*
`<module>:io out` Output *(required)*

#### Functions
`<module>:call` Runs the module *(required)*
alternatively if a module provides several operations: `<module>:call/<operation>` can be used
`<module>:callio` Copies `universal:strings io` into `<module>:io in` and then runs `<module>:call`, then copies `<module>:io out` to `universal:strings io` 
`<module>:load` Function called by load tag
`<module>:tick` Function called by tick tag

#### Naming
Tags, Objectives, Team, etc should follow this format (if possible): `<module>` or `<module>.text`
Fake player names should be invalid. e.g.: `#<name>`, `$<name>`, `<name>=`

#### Types
String -> `"abc"`
Char -> `"a"`
Char Array -> `["a","b","c"]`
Number -> `123`
Number Array -> `[1,2,3]`
Complex Number -> `{dec:0,num:[1,2,3],pol:1,base:10}`
Complex Number Array -> `[{dec:0,num:[1],pol:1,base:10},{dec:0,num:[2],pol:1,base:10},{dec:0,num:[3],pol:1,base:10}]`

## Credit

##### Made by:

- McTsts > String Reading
- gibbsly > Advanced String Operations
- Suso > Unix

*Please credit McTsts, Suso and gibbsly if you use any of the modules*

###### Additional Credit:

- Zonteek > Original Concept (to get timestamp)
- SirBenet > "a, b, c" tag step explanation
- Onnowhere > /help step concept
- Oskar > Asking about the /tag list bug
- Misode > Recursive nbt for dictionary solution
