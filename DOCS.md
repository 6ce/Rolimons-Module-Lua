# 'item_data' format
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
```

# rolimons:getItems()
returns the list of items (which can also be directly accessed with `rolimons.items`)

if the item data cache hasn't been updated, it will automatically do this itself (and will yield the thread until completion)
```luau
local items = rolimons:getItems()
print(items[1]) --> item_data
```

# rolimons:getItemByProperty(propertyName, propertyValue)
searches for (and returns) an item with the 'propertyName' that equals the 'propertyValue'

if the item data cache hasn't been updated, it will automatically do this itself (and will yield the thread until completion)

if the 'propertyValue' is a string, the case does not matter (you can pass either "SSHF" or "sshf" and it will return the same thing)

there are 4 valid item 'propertyNames':
```luau
{
	"name"
	"abbreviation"
	"rap"
	"id"
}
```
```luau
local item = rolimons:getItemByProperty("name", "Super Super Happy Face")
print(item) --> item_data
```

# rolimons:getMostValuableItems(limit)
searches for (and returns) items with the highest rap, which will stop searching once the amount of items hits the input 'limit'

if there is no passed limit, it will default to 10
```luau
local items = rolimons:getMostValuableItems(100) -- gets top 100 most valuable items
print(#items) --> 100
```

# rolimons:getItemsWorthMoreThan(minimum)
searches for (and returns) items with a rap that is higher than the input 'minimum'

if there is no input minimum, the module will error
```luau
local items = rolimons:getItemsWorthMoreThan(100000) -- gets items worth more than 100k rap
print(#items) --> outputs however many are worth more than that
```

# rolimons:getItemsWorthLessThan(minimum)
searches for (and returns) items with a rap that is less than the input 'maximum'

if there is no input maximum, the module will error
```luau
local items = rolimons:getItemsWorthLessThan(100000) -- gets items worth less than 100k rap
print(#items) --> outputs however many are worth more than that
```
