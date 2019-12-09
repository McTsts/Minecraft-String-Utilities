# Strings
Datapack that has string operations sort of.

## Modules
- strings: Reads strings into char arrays (Ts)
- examples: Has some example functions (Ts)
- string_operations: Can create "substrings" of char arrays (Ts)
- unix: Converts unix timestamps into dates/times (Suso)
- base64: converts an array of base64 chars into an array of ascii chars (gibbs)
- parser: parses an array of chars formatted as a json object into name/value pairs (gibbs)
- *More coming soon (Ts/gibbs)*

## Module - Strings
#### Basic Instructions
1. `data modify storage string:in input append value {string:"abcde"}` to put in a string
2. `function string:do/read` to read the string
3. `data get storage string:out out` to get the char array

#### Advanced Instructions
1. Replacement for Step 1: `data modify storage string:in input append value {string:"abcde",callback:"function example:test",callbackID:1}`
2. When the string is completely read the function in 'callback' is called and the score of 'callback string' is set to 'callbackID'. Both values are optional (see examples 3-4)
3. Several strings can be handelled after each other with a queue by using Basic Step 1 and Step 2 several times after one another (see example 4)

## Module - String Operations
### Substring
#### Instructions
1. `data merge storage substring:in {string:["a","b","c"],start:0,length:2}` input
2. `function substring:do/start` to execute
3. `data get storage substring:out string` to get a char array of the substring
4. Start determines where the substring starts, length determines how long it is
5. Negative start, starts counting from the end instead (start=-1 starts at the last character)
6. Negative length is equal to (string length)+(length) (length=-1 for a 10 character string would be 9)
7. The char array for this function can be generate using the Strings module and put into this module via a callback (see Examples 8 and 9)

## Module - Unix
#### Instructions
1. Input unix timestamp in seconds: `scoreboard players set second sUnix 1575491054`
2. Run `function unix:convert`
3. Outputs as scores: Objective `sUnix` for players `day`, `month`, `year`, `hour`, `minute`, `second`, `weekday` (0 for Thursday, 6 for Wednesday)
4. Outputs as CustomNames: month: `@e[type=minecraft:armor_stand,tag=month,tag=sUnix]`, weekday: `@e[type=minecraft:armor_stand,tag=weekday,tag=sUnix]`
5. `function unix:display` shows the result

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

#### Other info
- Itegrated with this module is a base(x) converter, instructions for its use can be found [here](https://github.com/gibbsly/fantastic-palm-tree)
- The output of this is formatted in name/value pairs inside of an output array, the notation is `{Value:[],Type:"",Extra:[],Name:[]}` Minecraft itself orders the data like this, I do not have any control over how the data is ordered inside of the pair itself.
- currently arrays aren't supported, it jsut copies all data from the start of the array (`[`) to the end of the array (`]`), leaving all data within un-prosessed. If you have any closed brackets (`]`) be sure to escape them out or the rest of the parsing may be messed up.
- escape characters are avalible, you are going to want to escape any qotes (`"`) within the name or value entires. To enter a backslash (`\`) into a char array you need to use 2, so `"\\"`.

## Credit
We were able to make this thanks to:

SirBenet, Onnowhere, Oskar & Zonteek!

Thank you :)


*Please credit McTsts, Suso and gibbsly if you use this*
