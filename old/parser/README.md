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
