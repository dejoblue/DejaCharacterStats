local ADDON_NAME, namespace = ... 	--localization
local L = namespace.L 				--localization

--local LOCALE = GetLocale()

if namespace.locale == "[locale name]" then
	-- The EU English game client also
	-- uses the US English locale code.

-- #######################################################################################
-- ##	[localised language name] ([language name in English]) translations provided by [tranlators] Curseforge.	##
-- ##	Thank you [tranlators]!												##
-- #######################################################################################

-- #######################
-- ##	Slash Commands 	##
-- #######################
	--L["DejaCharacterStats Slash commands (/dcstats):"] = ""
	--L["  /dcstats config: Opens the DejaCharacterStats addon config menu."] = "" --configuration
	--L["  /dcstats reset:  Resets DejaCharacterStats options to default."] = ""
	--L["config"] = "" --configuration --description of the commands does not have localised names for them. Should have been something like L["  /dcstats %s:  Resets DejaCharacterStats options to default."]
	--L["reset"] = "" --description of the commands does not have localised names for them
	--L["Reset to Default"] = ""

-- ################################
-- ## Global Options Left Column ##
-- ################################
	--L["Average Item Level:"] = "" --Patch 730rc106 addition
-- ################################
	--L["Equipped/Available"] = ""
	--L['Displays Equipped/Available item levels unless equal.'] = ""
	--L["Class Colors"] = "" --Patch 730rc106 addition
	--L['Displays average item level with class colors.'] = "" --Patch 730rc106 addition
	
	--L["One Decimal Place"] = ""
	--L['Displays average item level to one decimal place.'] = "" --Patch 7.1.0 r2 addition
	--L["Two Decimal Places"] = "" --Patch 7.1.0 r2 addition
	--L['Displays average item level to two decimal places.'] = "" --Patch 7.1.0 r2 addition

-- ################################
	--L["Character Stats:"] = "" --Patch 730rc106 addition
-- ################################
	--L["DCS's Hide At Zero"] = "" --Patch 730rc106 addition
	--L['Hides "Enhancements" stats if their displayed value would be zero. Checking "Decimals" changes the displayed value.'] = "" --Patch 730rc106 addition --Shouldn't use already localised "Enhancements", "Decimals" name? Some of "Enhancements" stats are now in "Defense" category.
	--L["Blizzard's Hide At Zero"] = "" --Patch 730rc106 addition
	--L['Hides "Enhancements" stats only if their numerical value is exactly zero. For example, if stat value is 0.001%, then it would be displayed as 0%.'] = "" --Patch 730rc106 addition --Shouldn't use already localised "Enhancements" name? Some of "Enhancements" stats are now in "Defense" category.

	--L["Decimals"] = ""
	--L['Displays "Enhancements" stats to two decimal places.'] = '' --Shouldn't use already localised "Enhancements" name? Some of "Enhancements" stats are now in "Defense" category.

-- ################################
	--L["Item Slots:"] = "" --Patch 730rc106 addition
-- ################################
	--L["Item Level"] = "" --Patch 730rc106 addition
	--L['Displays the item level of each equipped item.'] = "" --Patch 730rc106 addition

	--L["Durability Bars"] = ""
	--L["Displays a durability bar next to each item." ] = ""
	--L["Average Durability"] = ""
	--L["Displays average item durability on the character shirt slot and durability frames."] = ""
	--L["Item Durability"] = ""
	--L["Displays each equipped item's durability."] = ""

	--L["Item Repair Cost"] = ""
	--L["Displays each equipped item's repair cost."] = ""

-- ################################
	--L["Miscellaneous:"] = "" --Patch 730rc106 addition
-- ################################
	--L["Class Crest Background"] = ""
	--L["Displays the class crest background."] = ""

	--L["Expand"] = ""
	--L['Displays the Expand button for the character stats frame.'] = ""

	--L["Scrollbar"] = ""
	--L['Displays the DCS scrollbar.'] = ""

-- ################################
	--L["About DCS"] = "" --Patch 730rc106 addition
-- ################################
-- ## Stats ##
-- ################################
	--L["Unlock DCS"] = "" --Patch 7.1.0 r2 addition
	--L["Lock DCS"] = "" --Patch 7.1.0 r2 addition
--convenience buttons
	--L["Relevant Stats"] = ""
	--L["Show only stats relevant to your class spec."] = ""
    --L["All Stats"] = ""
	--L["Show All Stats"] = ""
	--L["Reset Stats"] = ""
	--L["Resets order of stats."] = ""

	--L['Show Character Stats'] = ""
	--L['Hide Character Stats'] = ""
--stat category names
	--L["General"] = "" --Patch 730rc106 addition
	--L["Attack"] = "" --Patch 730rc106 addition --invisible for most players
	--L["Offense"] = "" --Patch 730rc106 addition
	--L["Defense"] = "" --Patch 730rc106 addition
	--L["Ratings"] = "" --Patch 730rc106 addition
--the stat stuff
	--L["Durability"] = ""
	--L["Durability %s"] = "" -- ## --> %s MUST be included <-- ## --this IS used
	--L["Average equipped item durability percentage."] = ""

	--L["Repair Total"] = ""
	--L["Repair Total %s"] = "" -- ## --> %s MUST be included <-- ## --is this used?
	--L["Total equipped item repair cost before discounts."] = ""

	--L["Global Cooldown"] = "" --Patch 7.1.0 r2 addition
	--L["Global Cooldown %.2fs"] = "" --Patch 7.1.0 r2 addition --is this used?
	--L["General global cooldown refresh time."] = "" --Patch 7.1.0 r2 addition
	
	--L["Weapon DPS"] = "" --Patch 7.1.0 r2 addition
	--L["Main Hand"] = "" --Patch 7.1.0 r2 addition
	--L["/Off Hand"] = "" --Patch 7.1.0 r2 addition
	--L[" weapon auto attack (white) DPS."] = "" --Patch 7.1.0 r2 addition
	
	--L["Movement Speed"] = "" --Patch 730rc106 addition

	--L["%s of %s increases %s by %.2f%%"] --Patch 730rc106 addition --for example, "Haste Rating of 42 increases Haste by 1%".
	--Rating names might be seen during mouse-over on that stat (not rating) (at least so is in ruRU)
	--L["Critical Strike Rating"] = "" --Patch 730rc106 addition
	--L["Haste Rating"] = "" --Patch 730rc106 addition
	--L["Versatility Rating"] = "" --Patch 730rc106 addition
	--L["Mastery Rating"] = "" --Patch 730rc106 addition
	--L["Leech Rating"] = "" --Patch 730rc106 addition
	--L["Avoidance Rating"] = "" --Patch 730rc106 addition
	--L["Dodge Rating"] = "" --Patch 730rc106 addition
	--L["Parry Rating"] = "" --Patch 730rc106 addition
	--L["Requires Level "] = "" --Patch 730rc106 addition --space is required

-- ###########################################################################################
-- #XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX
-- ###########################################################################################
-- #XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX
-- ###########################################################################################
-- Deprecated slash comands (commented out in DejaCharacterStats.lua)
	--L["Resetting config to defaults"] = "" --configuration 
	--L["DejaCharacterStats is currently using "] = ""
	--L[" kbytes of memory"] = "" --kilobytes
	--L[" kbytes of memory after garbage collection"] = "" --kilobytes
	--L["dumpconfig"] = "" --configuration
	--L["With defaults"] = ""
	--L["Direct table"] = ""
	--L["perf"] = "" --performance
-- #XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX
--	Deprecated since using default client tables and translations.
-- #XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX
	--L['Durability '] = ""--durability with space
	--L['Displays the average Durability percentage for equipped items in the stat frame.'] = ""

	--L['Repair Total '] = "" --repair total with space
	--L['Displays the Repair Total before discounts for equipped items in the stat frame.'] = ""

	--L['Checked displays all stats. Unchecked displays relevant stats. Use Shift-scroll to snap to the top or bottom.'] = ""

	--L["Select-A-Stat™"]  = "" -- Try to use something snappy and silly like a Fallout or 1950's appliance feature.
	--L['Select which stats to display. Use Shift-scroll to snap to the top or bottom.'] = ""

-- ## Attributes ##
	--L["Health"] = ""
	--L["Power"] = ""
	--L["Druid Mana"] = ""
	--L["Armor"] = ""
	--L["Strength"] = ""
	--L["Agility"] = ""
	--L["Intellect"] = ""
	--L["Stamina"] = ""
	--L["Damage"] = ""
	--L["Attack Power"] = ""
	--L["Attack Speed"] = ""
	--L["Spell Power"] = ""
	--L["Mana Regen"] = ""
	--L["Energy Regen"] = ""
	--L["Rune Regen"] = ""
	--L["Focus Regen"] = ""

-- ## Enhancements ##
	--L["Critical Strike"] = ""
	--L["Haste"] = ""
	--L["Versatility"] = ""
	--L["Mastery"] = ""
	--L["Leech"] = ""
	--L["Avoidance"] = ""
	--L["Dodge"] = ""
	--L["Parry"] = ""
	--L["Block"] = ""

-- ## some strange relics
	--L["Ilvl Decimals"] = ""
	--L["  /dcstats reset:  Resets DejaCharacterStats frames to default positions."] = ""
	--L['Displays "Enhancements" category stats to two decimal places.'] = '' --addition of word "category"
end --return was needed because in pasted ssnippet localisations were one big function