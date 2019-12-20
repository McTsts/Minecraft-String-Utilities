# Strings
Datapack that has string operations sort of.

## Modules
###### Ts
- [strings](https://github.com/McTsts/Minecraft-String-Utilities/blob/master/README.md#module---strings): Reads strings into char arrays
- [strings/substring](https://github.com/McTsts/Minecraft-String-Utilities/blob/master/README.md#module---stringssubstring): Can create "substrings" of char arrays
- [strings/case](https://github.com/McTsts/Minecraft-String-Utilities/blob/master/README.md#module---stringscase): Has to lower, to upper case and get case functions
- *[dictionary](https://github.com/McTsts/Minecraft-String-Utilities/blob/master/README.md#module---dictionary): WIP part for a tts module*
- [examples](https://github.com/McTsts/Minecraft-String-Utilities/blob/master/README.md#module---examples): Has some example functions (Ts)
- [application/name](https://github.com/McTsts/Minecraft-String-Utilities/blob/master/README.md#module---applicationname): Shortens names using a set of rules, for occasions where messages may require names below a certain length

###### Gibbs
- [base64](https://github.com/McTsts/Minecraft-String-Utilities/blob/master/README.md#module---base64): converts an array of base64 chars into an array of ascii chars (gibbs)
- [parser](https://github.com/McTsts/Minecraft-String-Utilities/blob/master/README.md#module---parser): parses an array of chars formatted as a json object into name/value pairs (gibbs)
- [application/cape](https://github.com/McTsts/Minecraft-String-Utilities/blob/master/README.md#module---applicationcape): Detects which cape (if any) a player has


###### Suso
- [application/unix](https://github.com/McTsts/Minecraft-String-Utilities/blob/master/README.md#module---applicationunix): Converts unix timestamps into dates/times (Suso)

*More modules are in development*

## Module - Strings
#### Basic Instructions
1. `data modify storage string:in input append value {string:"abcde"}` to put in a string
2. `function string:do/read` to read the string
3. `data get storage string:out out` to get the char array

#### Advanced Instructions
###### Callback
1. Replacement for Step 1: `data modify storage string:in input append value {string:"abcde",callback:{command:"function example:test",id:1}}`
2. When the string is completely read the function in 'callback.command' is called and the score of 'callback string' is set to 'callback.id'. Both values are optional (see examples 3-4)
3. Several strings can be handelled after each other with a queue by using Basic Step 1 and Step 2 several times after one another (see example 4)
###### Async
1. Replacement for Step 1: `data modify storage string:in input append value {string:"abcde",async:{iterations:10}}`
2. After 'async.iterations' iterations the module stops processing and continues in the next tick. Can be combined with callbacks and the callback will be called once the entire string has been processed.

## Module - Strings/Substring
### Substring
#### Instructions
1. `data merge storage substring:in {string:["a","b","c"],start:0,length:2}` input
2. `function substring:do/start` to execute
3. `data get storage substring:out string` to get a char array of the substring
4. Start determines where the substring starts, length determines how long it is
5. Negative start, starts counting from the end instead (start=-1 starts at the last character)
6. Negative length is equal to (string length)+(length) (length=-1 for a 10 character string would be 9)
7. The char array for this function can be generate using the Strings module and put into this module via a callback (see Examples 8 and 9)

## Module - Strings/Case
*Explanation is coming soon*

## Module - Dictionary
*Module not final*

## Module - Examples
*Explanation is coming soon*

## Module - Application/Name
*Explanation is coming soon*

## Module - Base64
#### Basic Instructions
1. `/data modify storage base64:in string set value ["S", "G", "V", "s", "b", "G", "8", "g", "V", "2", "9", "y", "b", "G", "Q", "h"]`
2. `/function base64:convert`
3. `/data get storage ascii:main text` to read the output
3. `/function print:tellraw` gives a plaintext readout of the output array

#### Other Instructions
- `/function base64:call` will copy the array of characters from the output array of the strings module, then convert them. (Good for converting player skull data)
- `/function print:call` converts an array of bytes in the `storage ascii:main bytes` into ascii characters (ascii values 32 to 126)

## Module - Parser
#### Basic Instructions
1. `/data modify storage parse:in in set value ["{",'"',"a",'"',":",'"',"b",'"',"}"]`
2. `/function parser:call`
3. `/data get storage parse:main out` to read the output

#### Numbers
1. numbers longer than 9 digits are displayed in a specific way, for example the number `-3234567.8901` would be displayed as `[-1, 3, 2, 3, 4, 5, 6, 7, 8, 9, 0, 1, 4]` and if it is not in an array it's type would be `"long_number"`
2. the format for long numbers is `[p,n,d]` 
- `p` is `-1` if the number is negitive, and `1` if it is positive
- `n` is the digits in order
- `d` is the position of the decimal point from the right

#### Other info
- Integrated with this module is a base(x) converter, instructions for its use can be found [here](https://github.com/gibbsly/fantastic-palm-tree)
- The output of this is formatted in name/value pairs inside of an output array, the notation is `{Value:[],Type:"",Extra:[],Name:[]}` Minecraft itself orders the data like this, I do not have any control over how the data is ordered inside of the pair itself.
- escape characters are avalible, you are going to want to escape any qotes (`"`) within the name or value entires. To enter a backslash (`\`) into a char array you need to use 2, so `"\\"`.

## Module - Application/Cape
*Explanation is coming soon*

## Module - Application/Unix
#### Instructions
1. Input unix timestamp in seconds: `scoreboard players set second sUnix 1575491054`
2. Run `function unix:convert`
3. Outputs as scores: Objective `sUnix` for players `day`, `month`, `year`, `hour`, `minute`, `second`, `weekday` (0 for Thursday, 6 for Wednesday)
4. Outputs as CustomNames: month: `@e[type=minecraft:armor_stand,tag=month,tag=sUnix]`, weekday: `@e[type=minecraft:armor_stand,tag=weekday,tag=sUnix]`
5. `function unix:display` shows the result

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



