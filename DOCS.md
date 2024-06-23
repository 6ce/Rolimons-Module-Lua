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

# rolimons:getItemsAsync(): {item}
forces item cache to update, and returns all item data:
```luau
local items = rolimons:getItemsAsync()
print(items[1]) --> item_data
```

# rolimons:getItems(): {item}
returns the list of items (which can also be directly accessed with `rolimons.items`)

if the item data cache hasn't been updated, it will automatically do this itself (and will yield the thread until completion)
```luau
local items = rolimons:getItems()
print(items[1]) --> item_data
```

# rolimons:getItemByProperty(propertyName: string, propertyValue: string): item
