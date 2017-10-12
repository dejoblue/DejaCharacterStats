local ADDON_NAME, namespace = ... 	--localization
local L = namespace.L 				--localization

--local LOCALE = GetLocale()

if namespace.locale == "zhTW" then
	-- The EU English game client also
	-- uses the US English locale code.

-- #######################################################################################################################
-- ##	繁體中文 (Traditional Chinese) translations provided by BNSSNB, killsophia, konraddo, and y123ao6 on Curseforge.	##
-- #######################################################################################################################

L["  /dcstats config: Opens the DejaCharacterStats addon config menu."] = "/dcstats config: 開啟DejaCharacterStats插件設置選項。"
--Translation missing 
-- L["  /dcstats reset:  Resets DejaCharacterStats options to default."] = ""
--Translation missing 
-- L["%s of %s increases %s by %.2f%%"] = ""
L["/dcstats reset:  Resets DejaCharacterStats frames to default positions."] = "/dcstats reset:  重設DejaCharacterStats框架到預設位置。"
--Translation missing 
-- L["About DCS"] = ""
L["Agility"] = "敏捷"
--Translation missing 
-- L["All Stats"] = ""
L["Armor"] = "護甲"
L["Attack"] = "攻擊"
L["Attack Power"] = "攻擊強度"
L["Attack Speed"] = "攻擊速度"
L["Average Durability"] = "平均耐久度"
L["Average equipped item durability percentage."] = "平均已裝備物品耐久度百分比。"
L["Average Item Level:"] = "平均物品等級："
L["Avoidance"] = "閃避"
L["Avoidance Rating"] = "迴避點數"
L["Blizzard's Hide At Zero"] = "以暴雪方式隱藏0值"
L["Block"] = "格擋"
L["Character Stats:"] = "角色屬性："
L["Checked displays all stats. Unchecked displays relevant stats. Use Shift-scroll to snap to the top or bottom."] = "勾選顯示所有屬性。不勾選顯示相應屬性。按Shift鍵後以滑鼠滾輪快速回到頂部或底部。"
L["Class Colors"] = "職業顏色"
--Translation missing 
-- L["Class Crest Background"] = ""
L["Critical Strike Rating"] = "致命一擊點數"
L["Damage"] = "傷害"
L["DCS's Hide At Zero"] = "以DCS方式隱藏0值"
L["Decimals"] = "小數點"
L["Defense"] = "防禦"
L["DejaCharacterStats is currently using"] = "DejaCharacterStats目前使用了"
L["DejaCharacterStats Slash commands (/dcstats):"] = "DejaCharacterStats指令(/dcstats)"
L["Direct table"] = "直接數據表"
L["Displays \"Enhancements\" category stats to two decimal places."] = "顯示\"強化\"欄位的屬性到兩個小數點。"
L["Displays a durability bar next to each item."] = "在每個物品的旁邊顯示耐久度條。"
L["Displays average item durability on the character shirt slot and durability frames."] = "在角色介面襯衫欄與耐久度框架顯示平均物品耐久度。"
L["Displays average item level to one decimal place."] = "顯示平均物品等級到小數點一位。"
--Translation missing 
-- L["Displays average item level to two decimal places."] = ""
L["Displays average item level with class colors."] = "以職業顏色顯示平均物品等級"
L["Displays each equipped item's durability."] = "顯示每個已裝備物品的耐久度。"
L["Displays each equipped item's repair cost."] = "顯示每個已裝備物品的修理費用。"
L["Displays Equipped/Available item levels unless equal."] = "顯示已裝備/可用的物品等級除非相等。"
L["Displays the average Durability percentage for equipped items in the stat frame."] = "在屬性介面顯示已裝備物品的平均耐久度百分比。"
--Translation missing 
-- L["Displays the class crest background."] = ""
L["Displays the DCS scrollbar."] = "顯示DCS滾動條。"
L["Displays the Expand button for the character stats frame."] = "顯示打開角色屬性介面按鈕。"
L["Displays the item level of each equipped item."] = "顯示已裝備物品的等級"
L["Displays the Repair Total before discounts for equipped items in the stat frame."] = "在屬性介面顯示已裝備物品未打折的總修理費用。"
L["Dodge Rating"] = "閃躲點數"
L["Durability"] = "耐久度"
L["Durability Bars"] = "耐久度條"
L["Energy Regen"] = "能量恢復"
L["Equipped/Available"] = "已裝備/可用"
L["Expand"] = "打開"
L["Focus Regen"] = "集中值恢復"
L["General"] = "一般"
L["General global cooldown for casters. Individual spells, set bonuses, talents, etc. not considered. Not suitable for melee. Improvements coming Soon(TM)."] = "一般施法者的通用冷卻。未考慮個別法術、套裝特效、天賦等。不適用於近戰。將很快改進(TM)。"
L["General global cooldown refresh time."] = "一般通用冷卻刷新時間。"
L["Global Cooldown"] = "通用冷卻"
L["Haste"] = "加速"
L["Haste Rating"] = "加速點數"
L["Hide Character Stats"] = "隱藏角色屬性"
--Translation missing 
-- L["Hides \"Enhancements\" stats if their displayed value would be zero. Checking \"Decimals\" changes the displayed value."] = ""
--Translation missing 
-- L["Hides \"Enhancements\" stats only if their numerical value is exactly zero. For example, if stat value is 0.001%, then it would be displayed as 0%."] = ""
L["Ilvl Decimals"] = "物品等級小數點"
L["Item Durability"] = "物品耐久度"
L["Item Level"] = "物品等級"
L["Item Level 1 Decimal Place"] = "物品等級1小數點位數"
L["Item Level 2 Decimal Places"] = "物品等級2小數點位數"
L["Item Repair Cost"] = "物品修理費用"
L["Item Slots:"] = "物品欄位："
L["kbytes of memory"] = "KB的記憶體"
L["kbytes of memory after garbage collection"] = "KB的記憶體（已清理垃圾）"
L["Leech"] = "汲取"
L["Leech Rating"] = "汲取點數"
L["Lock DCS"] = "鎖定DCS"
L["Main Hand"] = "主手"
L["Mana Regen"] = "法力恢復"
L["Mastery"] = "精通"
L["Mastery Rating"] = "精通點數"
L["Miscellaneous:"] = "雜項："
L["Movement Speed"] = "移動速度"
L["Off Hand"] = "副手"
--Translation missing 
-- L["Offense"] = ""
--Translation missing 
-- L["One Decimal Place"] = ""
L["Parry"] = "招架"
L["Parry Rating"] = "招架點數"
L["Rating"] = "點數"
--Translation missing 
-- L["Ratings"] = ""
L["Relevant Stats"] = "相應屬性"
L["Repair Total"] = "總修理費用"
--Translation missing 
-- L["Requires Level "] = ""
L["reset"] = "恢復預設設定"
L["Reset Stats"] = "重設屬性"
L["Reset to Default"] = "恢復為預設"
--Translation missing 
-- L["Resets order of stats."] = ""
L["Resetting config to defaults."] = "恢復預設設定。"
L["Rune Speed"] = "符能速度"
L["Scrollbar"] = "捲動條"
L["Select which stats to display. Use Shift-scroll to snap to the top or bottom."] = "選擇要顯示哪些屬性。按Shift鍵後以滑鼠滾輪快速回到頂部或底部。"
L["Select-A-Stat™"] = "選擇-A-屬性™"
L["Show all stats."] = "顯示所有屬性"
L["Show Character Stats"] = "顯示角色屬性"
--Translation missing 
-- L["Show only stats relevant to your class spec."] = ""
L["Spell Power"] = "法術強度"
L["Total equipped item repair cost before discounts."] = "已裝備物品未打折修理花費總計。"
L["Two Decimal Places"] = "兩位小數"
L["Unlock DCS"] = "解鎖DCS"
L["Versatility"] = "臨機應變"
L["Versatility Rating"] = "臨機應變點數"
L["weapon auto attack (white) DPS."] = "武器自動攻擊(白字)每秒傷害。"
L["Weapon DPS"] = "武器每秒傷害"
L["With defaults"] = "包含預設"

return end
