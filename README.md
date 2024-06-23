# Rolimons-Lua
Roblox module for interacting with limiteds thru rolimons.com

# Usage
```luau
local rolimons = require(path.to.rolimons)
local sshf = rolimons:getItemByAbbreviation("SSHF")

print("sshf data:")
for index, value in next, sshf do
    print(index, value)
end
```

Output:
```
sshf data:
abbreviation SSHF
rap 282246
name Super Super Happy Face
id 494291269
```
