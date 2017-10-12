local ADDON_NAME, namespace = ... 	--localization
local L = namespace.L 				--localization

--local LOCALE = GetLocale()

if namespace.locale == "koKR" then
	-- The EU English game client also
	-- uses the US English locale code.

-- ###################################################################################################
-- ##	한국어 (Korean) translations provided by PositiveMind, yuk6196, and netaras on Curseforge.		##
-- ###################################################################################################

L["  /dcstats config: Opens the DejaCharacterStats addon config menu."] = "/dcstats config: DejaCharacterStats 애드온 설정 메뉴를 엽니다."
--Translation missing 
-- L["  /dcstats reset:  Resets DejaCharacterStats options to default."] = ""
--Translation missing 
-- L["%s of %s increases %s by %.2f%%"] = ""
L["/dcstats reset:  Resets DejaCharacterStats frames to default positions."] = "/dcstats reset: DejaCharacterStats 창을 기본 위치로 초기화합니다."
--Translation missing 
-- L["About DCS"] = ""
L["Agility"] = "민첩성"
--Translation missing 
-- L["All Stats"] = ""
L["Armor"] = "방어도"
--Translation missing 
-- L["Attack"] = ""
L["Attack Power"] = "전투력"
L["Attack Speed"] = "공격 속도"
L["Average Durability"] = "평균 내구도"
L["Average equipped item durability percentage."] = "착용 중인 아이템의 평균 내구도 백분율입니다."
--Translation missing 
-- L["Average Item Level:"] = ""
L["Avoidance"] = "광역회피"
--Translation missing 
-- L["Avoidance Rating"] = ""
--Translation missing 
-- L["Blizzard's Hide At Zero"] = ""
L["Block"] = "방패 막기"
--Translation missing 
-- L["Character Stats:"] = ""
L["Checked displays all stats. Unchecked displays relevant stats. Use Shift-scroll to snap to the top or bottom."] = "선택하면 모든 능력치를 표시합니다. 선택하지 않으면 관련 능력치를 표시합니다. 상단이나 하단으로 바로 이동하려면 Shift-스크롤을 사용하세요."
--Translation missing 
-- L["Class Colors"] = ""
--Translation missing 
-- L["Class Crest Background"] = ""
--Translation missing 
-- L["Critical Strike Rating"] = ""
L["Damage"] = "피해"
--Translation missing 
-- L["DCS's Hide At Zero"] = ""
L["Decimals"] = "소수점"
--Translation missing 
-- L["Defense"] = ""
L["DejaCharacterStats is currently using"] = "DejaCharacterStats는 현재"
L["DejaCharacterStats Slash commands (/dcstats):"] = "DejaCharacterStats 슬래시 명령어 (/dcstats):"
L["Direct table"] = "직접 테이블"
L["Displays \"Enhancements\" category stats to two decimal places."] = "\"강화 수치\" 항목의 능력치를 소수점 2자리까지 표시합니다."
L["Displays a durability bar next to each item."] = "각 아이템 옆에 내구도 바를 표시합니다."
L["Displays average item durability on the character shirt slot and durability frames."] = "캐릭터 속옷 칸과 내구도 창에 착용 아이템의 평균 내구도를 표시합니다."
L["Displays average item level to one decimal place."] = "평균 아이템 레벨을 소수점 첫째 자리까지 표시합니다."
--Translation missing 
-- L["Displays average item level to two decimal places."] = ""
--Translation missing 
-- L["Displays average item level with class colors."] = ""
L["Displays each equipped item's durability."] = "각 착용 아이템의 내구도를 표시합니다."
L["Displays each equipped item's repair cost."] = "각 착용 아이템의 수리비를 표시합니다."
L["Displays Equipped/Available item levels unless equal."] = "동일하지 않으면 착용/소지 아이템 레벨을 표시합니다."
L["Displays the average Durability percentage for equipped items in the stat frame."] = "능력치 창에 착용 아이템의 평균 내구도 백분율을 표시합니다."
--Translation missing 
-- L["Displays the class crest background."] = ""
L["Displays the DCS scrollbar."] = "DCS 스크롤바를 표시합니다"
L["Displays the Expand button for the character stats frame."] = "캐릭터 능력치 창에 확장 버튼을 표시합니다."
--Translation missing 
-- L["Displays the item level of each equipped item."] = ""
L["Displays the Repair Total before discounts for equipped items in the stat frame."] = "능력치 창에 착용 아이템의 할인 전 총 수리비를 표시합니다."
--Translation missing 
-- L["Dodge Rating"] = ""
L["Durability"] = "내구도"
L["Durability Bars"] = "내구도 바"
L["Energy Regen"] = "기력 회복량"
L["Equipped/Available"] = "착용 중/소지 중"
L["Expand"] = "확장 표시"
L["Focus Regen"] = "집중 회복량"
--Translation missing 
-- L["General"] = ""
L["General global cooldown for casters. Individual spells, set bonuses, talents, etc. not considered. Not suitable for melee. Improvements coming Soon(TM)."] = "캐스터를 위한 일반적인 전역 재사용 대기시간입니다. 각각의 주문, 세트 효과, 특성 등을 고려하지 않습니다. 근접 캐릭터에겐 어울리지 않습니다. 곧 개선될 예정입니다(TM)."
L["General global cooldown refresh time."] = "일반적인 전역 재사용 대기시간입니다."
L["Global Cooldown"] = "전역 재사용 대기시간"
L["Haste"] = "가속"
--Translation missing 
-- L["Haste Rating"] = ""
L["Hide Character Stats"] = "캐릭터 능력치 숨기기"
--Translation missing 
-- L["Hides \"Enhancements\" stats if their displayed value would be zero. Checking \"Decimals\" changes the displayed value."] = ""
--Translation missing 
-- L["Hides \"Enhancements\" stats only if their numerical value is exactly zero. For example, if stat value is 0.001%, then it would be displayed as 0%."] = ""
L["Ilvl Decimals"] = "템렙 소수점"
L["Item Durability"] = " 아이템 내구도"
--Translation missing 
-- L["Item Level"] = ""
L["Item Level 1 Decimal Place"] = "아이템 레벨 소수점 첫째 자리"
L["Item Level 2 Decimal Places"] = "아이템 레벨 소수점 둘째 자리"
L["Item Repair Cost"] = "아이템 수리비"
--Translation missing 
-- L["Item Slots:"] = ""
L["kbytes of memory"] = "kbytes의 메모리를 사용 중입니다."
L["kbytes of memory after garbage collection"] = "kbytes의 메모리를 정리하였습니다"
L["Leech"] = "생기흡수"
--Translation missing 
-- L["Leech Rating"] = ""
L["Lock DCS"] = "DCS 잠그기"
L["Main Hand"] = "주장비"
L["Mana Regen"] = "마나 회복량"
L["Mastery"] = "특화"
--Translation missing 
-- L["Mastery Rating"] = ""
--Translation missing 
-- L["Miscellaneous:"] = ""
L["Movement Speed"] = "이동 속도"
L["Off Hand"] = "보조장비"
--Translation missing 
-- L["Offense"] = ""
--Translation missing 
-- L["One Decimal Place"] = ""
L["Parry"] = "무기 막기"
--Translation missing 
-- L["Parry Rating"] = ""
--Translation missing 
-- L["Rating"] = ""
--Translation missing 
-- L["Ratings"] = ""
L["Relevant Stats"] = "관련 능력치"
L["Repair Total"] = "총 수리비"
--Translation missing 
-- L["Requires Level "] = ""
L["reset"] = "reset"
L["Reset Stats"] = "능력치 초기화"
L["Reset to Default"] = "기본값으로 초기화"
--Translation missing 
-- L["Resets order of stats."] = ""
L["Resetting config to defaults."] = "설정을 기본값으로 초기화합니다."
L["Rune Speed"] = "룬 재생 속도"
L["Scrollbar"] = "스크롤바"
L["Select which stats to display. Use Shift-scroll to snap to the top or bottom."] = "표시할 능력치를 선택하세요. 상단이나 하단으로 이동하려면 Shift-스크롤을 사용하세요."
L["Select-A-Stat™"] = "Select-A-Stat™"
L["Show all stats."] = "모든 능력치 표시"
L["Show Character Stats"] = "캐릭터 능력치 표시"
--Translation missing 
-- L["Show only stats relevant to your class spec."] = ""
L["Spell Power"] = "주문력"
L["Total equipped item repair cost before discounts."] = "착용 아이템의 할인 전 총 수리비입니다."
--Translation missing 
-- L["Two Decimal Places"] = ""
L["Unlock DCS"] = "DCS 잠금 해제"
L["Versatility"] = "유연성"
--Translation missing 
-- L["Versatility Rating"] = ""
L["weapon auto attack (white) DPS."] = "무기의 자동 공격 (흰색) DPS입니다."
L["Weapon DPS"] = "무기 DPS"
L["With defaults"] = "기본값으로"

return end
