## Module - Base64
#### Basic Instructions
1. `/data modify storage base64:io in set value ["S", "G", "V", "s", "b", "G", "8", "g", "V", "2", "9", "y", "b", "G", "Q", "h"]`
2. `/function base64:call`
3. `/data get base64:io out` to read the output

#### Other Instructions
- `/function print:call` converts an array of bytes in the `storage ascii:main bytes` into ascii characters (ascii values 32 to 126)
