# item format
each item (limited) is formatted like so:
```luau
{
    id: number,
    rap: number,
    name: string,
    abbreviation: string
}
```
example ([super super happy face](https://www.rolimons.com/item/494291269)):
```luau
{
    id = 494291269,
    rap = 282246,
    name: "Super Super Happy Face",
    abbreviation: "SSHF"
}
```

# rolimons:getItemsAsync()
forces item cache to update, and returns all item data:
```luau
local items = rolimons:getItemsAsync()
print(items[1]) --> item_data
