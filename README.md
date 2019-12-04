# Strings
Simple datapack that converts a string into a char array.

## Modules
- strings: Reads strings into char arrays (Ts)
- examples: Has some example functions (Ts)
- *More coming soon (Ts/gibbs)*

## Module - Strings
#### Basic Instructions
1. Run `function string:helper/build` in a commandblock to create the command block stuff (you will receive this command automatically from the setup function which runs on /reload)
2. `data modify storage string:in input append value {string:"abcde"}` to put in a string
3. `function string:do/read` to read the string
4. `data get storage string:out out` to get the char array

#### Advanced Instructions
1. Replacement for Step 2: `data modify storage string:in input append value {string:"abcde",callback:"function example:test",callbackID:1}`
2. When the string is completely read the function in 'callback' is called and the score of 'callback string' is set to 'callbackID'. Both values are optional (see examples)
3. Several strings can be handelled after each other with a queue by using Basic Step 2 and Step 3 several times after one another (see examples)

## Credit
This is possible thanks to:

SirBenet, Onnowhere, Oskar & Zonteek!

Thank you :)


*Please credit McTsts and gibbsly if you use this*
