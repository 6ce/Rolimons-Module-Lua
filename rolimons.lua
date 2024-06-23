local httpService = game:GetService("HttpService")

local dataFormat = {
	["name"] = 1;
	["abbreviation"] = 2;
	["rap"] = 3;
}
local validProperties = {
	"name";
	"abbreviation";
	"rap";
	"id";
}

local rolimons = {}

rolimons.api = "https://www.rolimons.com/itemapi/itemdetails"
rolimons.items = {}
rolimons.updated = false

local function isValidProperty(property: string): boolean
	for _, valid in next, validProperties do
		if valid:lower() == property:lower() then
			return true
		end
	end
	
	return false
end

function rolimons:getItemsAsync(): {{id: number, name: string, abbreviation: string, rap: number}}
	local response = httpService:GetAsync(rolimons.api, true)
	local data = httpService:JSONDecode(response)
	
	for id, item in next, data["items"] do
		local formatted = {}
		table.insert(rolimons.items, formatted)
		
		formatted["id"] = tonumber(id)
		for format, index in next, dataFormat do
			formatted[format] = item[index]
		end
	end
	
	rolimons.updated = true
	return rolimons.items
end

function rolimons:getItems(): ({{id: number, name: string, abbreviation: string, rap: number}}, boolean)
	if not rolimons.updated then
		return rolimons:getItemsAsync(), true
	end
	return rolimons.items, false
end

function rolimons:getItemByProperty(propertyName: string, propertyValue: string): {id: number, name: string, abbreviation: string, rap: number}?
	assert(isValidProperty(propertyName), "Invalid property passed (must be one of 'id', 'name', 'rap', 'abbreviation')")
	
	if not rolimons.updated then
		rolimons:getItemsAsync()
	end
	
	propertyName = propertyName:lower()
	
	for _, item in next, rolimons.items do
		if typeof(propertyValue) == "string" then
			if tostring(item[propertyName]):lower() == propertyValue:lower() then
				return item
			end
		else
			if item[propertyName] == propertyValue then
				return item
			end
		end
	end
end

function rolimons:getMostValuableItems(limit: number?): {{id: number, name: string, abbreviation: string, rap: number}}
	limit = limit or 10
	
	if not rolimons.updated then
		rolimons:getItemsAsync()
	end

	local items = {}
	for _, item in next, rolimons.items do
		table.insert(items, item)
	end

	table.sort(items, function(a, b)
		return a["rap"] > b["rap"]
	end)

	local topItems = {}
	for i = 1, math.min(limit, #items) do
		table.insert(topItems, items[i])
	end
	
	table.clear(items)

	return topItems
end

function rolimons:getItemsWorthMoreThan(minimum: number): {{id: number, name: string, abbreviation: string, rap: number}?}
	assert(typeof(minimum) == "number", "'minimum' must be a number")
	
	if not rolimons.updated then
		rolimons:getItemsAsync()
	end
	
	local items = {}
	for _, item in next, rolimons.items do
		if item["rap"] > minimum then
			table.insert(items, item)
		end
	end
	return items
end

function rolimons:getItemsWorthLessThan(maximum: number): {{id: number, name: string, abbreviation: string, rap: number}?}
	assert(typeof(maximum) == "number", "'maximum' must be a number")

	if not rolimons.updated then
		rolimons:getItemsAsync()
	end

	local items = {}
	for _, item in next, rolimons.items do
		if item["rap"] < maximum then
			table.insert(items, item)
		end
	end
	return items
end

function rolimons:getItemByAbbreviation(abbreviation: string): {id: number, name: string, abbreviation: string, rap: number}?
	return rolimons:getItemByProperty("abbreviation", abbreviation)
end

function rolimons:getItemByName(name: string): {id: number, name: string, abbreviation: string, rap: number}?
	return rolimons:getItemByProperty("name", name)
end

function rolimons:getItemById(id: string): {id: number, name: string, abbreviation: string, rap: number}?
	return rolimons:getItemByProperty("id", id)
end

function rolimons:getItemByRap(rap: string): {id: number, name: string, abbreviation: string, rap: number}?
	return rolimons:getItemByProperty("rap", rap)
end

return rolimons
