# Strings
Datapack that has string operations sort of.

## Modules
- strings: Reads strings into char arrays (Ts)
- examples: Has some example functions (Ts)
- substring: Can create "substrings" of char arrays (Ts)
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

## Module - Substring
#### Instructions
1. `data merge storage substring:in {string:["a","b","c"],start:0,length:2}` input
2. `function substring:do/start` to execute
3. `data get storage substring:out string` to get a char array of the substring
4. Start determines where the substring starts, length determines how long it is
5. Negative start starts counting from the end instead (start=-1 starts at the last character)
6. Negative length removes is equal to (string length)+(length) (length=-1 for a 10 character string would be 9)
7. The char array for this function can be generate using the Strings module and put into this module via a callback see Examples 8 and 9

## Credit
We were able to make this thanks to:

SirBenet, Onnowhere, Oskar & Zonteek!

Thank you :)


*Please credit McTsts and gibbsly if you use this*
