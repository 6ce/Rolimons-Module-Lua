# Rolimons Module
Roblox module for interacting with limiteds with rolimons

# Info
[GitHub](https://github.com/6ce/Rolimons-Lua) | [Documentation](https://github.com/6ce/Rolimons-Lua/blob/main/DOCS.md)

# Usage
```luau
local rolimons = require(path.to.module) -- path to the rolimons module

local limiteds = rolimons:getItemsAsync() -- updates 'item cache' and gets list of limiteds
print(`total limiteds: {#limiteds}`) -- outputs number of limiteds

local worthLessThan = rolimons:getItemsWorthLessThan(100000) -- gets all items with less than 100k rap
print(`total limiteds worth less than 100k rap: {#worthLessThan}`) -- outputs number of those items

local worthMoreThan = rolimons:getItemsWorthMoreThan(100000) -- gets all items with more than 100k rap
print(`total limiteds worth more than 100k rap: {#worthMoreThan}`) -- outputs number of those items

local sshf = rolimons:getItemByAbbreviation("SSHF") -- searches for an item with the abbreviation SSHF (super super happy face)
print("sshf data:")
for i,v in next, sshf do
	print(i,v) -- outputs super super happy face's id, abbreviation, rap, and name
end

local mostValuableItems = rolimons:getMostValuableItems(100) -- gets the top 100 most valuable items
print("top 100 most valuable items:")
for _, item in next, mostValuableItems do
	warn(`{item["name"]} - {item["rap"]} rap`) -- outputs each item's name and rap
end
```

Output (as of 06/22/2024):
```
total limiteds: 2503
total limiteds worth less than 100k rap: 2243
total limiteds worth more than 100k rap: 259

sshf data:
abbreviation SSHF
rap 282246
name Super Super Happy Face
id 494291269
```
<details>
<summary>Top 100 most valuable items:</summary>
	
```
Dominus Frigidus - 28059680 rap
Dominus Astra - 14321557 rap
Dominus Empyreus - 13577229 rap
Midnight Blue Sparkle Time Fedora - 10072644 rap
Purple Sparkle Time Fedora - 9149676 rap
Orange Sparkle Time Fedora - 6969690 rap
Dominus Pittacium - 6829988 rap
Blackvalk - 5973212 rap
Domino Crown - 5726071 rap
Pink Sparkle Time Fedora - 5359757 rap
Red Sparkle Time Fedora - 4871499 rap
Green Sparkle Time Fedora - 4586382 rap
Red Bandana of SQL Injection - 4439998 rap
Dominus Aureus - 4316150 rap
Black Sparkle Time Fedora - 4238884 rap
Emerald Valkyrie - 4152165 rap
brayden99's ROBLOX Tablet - 4000000 rap
Rainbow Shaggy - 3928213 rap
Dominus Rex - 3343432 rap
Sky Blue Sparkle Time Fedora - 3288308 rap
Dominus Messor - 3264147 rap
mygame43's ROBLOX Tablet - 2800000 rap
Red Tango - 2719325 rap
Sparkle Time Valkyrie - 2580879 rap
White Sparkle Time Fedora - 2360724 rap
Eerie Pumpkin Head - 2275664 rap
Archduke of the Federation - 2008237 rap
Dominus Infernus - 1973087 rap
Red Void Star - 1952650 rap
Teal Sparkle Time Fedora - 1871575 rap
Lord of the Tixeration - 1767805 rap
The Void Star - 1751960 rap
Tix Shaggy - 1732825 rap
Red Domino Crown - 1608123 rap
The Golden Robloxian - 1523890 rap
Sparkle Time Fedora - 1413350 rap
Darkheart - 1399050 rap
Black Iron King of the Night - 1337382 rap
Tixvalk - 1322803 rap
Fiery Horns of the Netherworld - 1289502 rap
Lord of the Federation - 1277922 rap
Red Glowing Eyes - 1258917 rap
Dominus Vespertilio - 1213965 rap
Clockwork's Shades - 1120149 rap
Duke of the Federation - 1077591 rap
Disgraced Baron of the Federation - 1058178 rap
Lady of the Federation - 1055760 rap
Frozen Horns of the Frigid Planes - 1034653 rap
WC Ultimates: Aquamarine Attitude - 1004194 rap
Tough Guy Cap - 973003 rap
billylones' ROBLOX Tablet - 953400 rap
Bling $$ Necklace - 939382 rap
Earl of the Federation - 925483 rap
Illumina - 892190 rap
WC Ultimates: Pink Diamond Distraction - 880648 rap
): Euro 180 - 859086 rap
The Crown of Roses - 799288 rap
Ghosdeeri - 798188 rap
Poisoned Horns of the Toxic Wasteland - 772043 rap
Bluesteel Fedora - 739929 rap
TheAmazeman's ROBLOX Tablet - 737737 rap
Transient Harmonica - 717471 rap
Telamon Hair - 696670 rap
Countess of the Federation - 690341 rap
The Ice Crown - 672975 rap
Yellow Glowing Eyes - 651326 rap
Decklace - 640600 rap
Rbadam's Smokestack Top Hat - 629210 rap
Clockwork's Headphones - 612064 rap
Dark Horns of Pwnage - 607212 rap
Archduchess of the Federation - 587976 rap
Viscountess of the Federation - 586360 rap
Double Platinum DJ - 581160 rap
Eccentric Shop Teacher - 576204 rap
Green Glowing Eyes - 570783 rap
Yum! - 569620 rap
Dominus Praefectus - 563174 rap
Ghostwalker - 561777 rap
Linked Sword - 553190 rap
Bluesteel Domino Crown - 552354 rap
): Star Tailslide - 521968 rap
): Red Grind - 497128 rap
Dr. Ishmael - 493694 rap
The Wanwood Crown - 492113 rap
Eyes of Azurewrath - 491078 rap
The Fire Crown - 478889 rap
Eyes of Crimsonwrath - 477206 rap
Real Electric Stunnas - 474470 rap
Telamonster: the Chaos Edge - 473824 rap
Royal Agate Egg of Beautiful Dreams - 470000 rap
Sword Cane - 458317 rap
Duke of the Fallen Federation - 455130 rap
Silver King of the Night - 441252 rap
Disgraced Baroness of the Federation - 420200 rap
Green Bow Tie - 418535 rap
Crescendo, The Soul Stealer - 417896 rap
Interstellar Wings - 415962 rap
Eyes of Emeraldwrath - 411075 rap
Viscount of the Federation - 408188 rap
Tattletale - 407597 rap
```
</details>

# Disclaimer
Yes I know this was made better and more efficiently [here](https://github.com/Accutrix/Rolimons). This was just practice.
