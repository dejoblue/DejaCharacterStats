local _, namespace = ... 	--localization
local L = namespace.L 				--localization

local _, addon = ...
addon.duraMean = 0

local _, gdbprivate = ...

local ipairs = ipairs
local DCS_CharacterShirtSlot = CharacterShirtSlot
-- ---------------------------
-- -- DCS Durability Frames --
-- ---------------------------

local DCSITEM_SLOT_FRAMES = {
	CharacterHeadSlot,CharacterNeckSlot,CharacterShoulderSlot,CharacterBackSlot,CharacterChestSlot,CharacterWristSlot,
	CharacterHandsSlot,CharacterWaistSlot,CharacterLegsSlot,CharacterFeetSlot,
	CharacterFinger0Slot,CharacterFinger1Slot,CharacterTrinket0Slot,CharacterTrinket1Slot,
	CharacterMainHandSlot,CharacterSecondaryHandSlot,
}

local DCSITEM_SLOT_FRAMES_RIGHT = {
	CharacterHeadSlot,CharacterShoulderSlot,CharacterChestSlot,CharacterWristSlot,CharacterSecondaryHandSlot,
}

local DCSITEM_SLOT_FRAMES_LEFT = {
	CharacterHandsSlot,CharacterWaistSlot,CharacterLegsSlot,CharacterFeetSlot,CharacterMainHandSlot,
}

--local duraMean
local duraTotal
local duraMaxTotal
local duraFinite = 0

--------------------
-- Create Objects --
--------------------
local duraMeanFS = DCS_CharacterShirtSlot:CreateFontString("FontString","OVERLAY","GameTooltipText")
	duraMeanFS:SetPoint("CENTER",DCS_CharacterShirtSlot,"CENTER",1,-2)
	duraMeanFS:SetFont("Fonts\\FRIZQT__.TTF", 15, "THINOUTLINE")
	duraMeanFS:SetFormattedText("")

local duraMeanTexture = DCS_CharacterShirtSlot:CreateTexture(nil,"ARTWORK")

local duraDurabilityFrameFS = DurabilityFrame:CreateFontString("FontString","OVERLAY","GameTooltipText")
	duraDurabilityFrameFS:SetPoint("CENTER",DurabilityFrame,"CENTER",0,0)
	duraDurabilityFrameFS:SetFont("Fonts\\FRIZQT__.TTF", 16, "THINOUTLINE")
	duraDurabilityFrameFS:SetFormattedText("")
	
for _, v in ipairs(DCSITEM_SLOT_FRAMES) do
	--v.duratexture = duraColorTexture
	v.duratexture = v:CreateTexture(nil,"ARTWORK")

	--v.durability = duraFS
    v.durability = v:CreateFontString("FontString","OVERLAY","GameTooltipText")
    v.durability:SetFormattedText("")

    --v.itemrepair = itemrepairFS
    v.itemrepair = v:CreateFontString("FontString","OVERLAY","GameTooltipText")
    v.itemrepair:SetFormattedText("")
	
    --v.ilevel = itemrepairFS
    v.ilevel = v:CreateFontString("FontString","OVERLAY","GameTooltipText")
    v.ilevel:SetFormattedText("")
end

--TODO - setting of their values and checkbox states in frame meant for this purpose

local showavgdur --display of average durability on shirt
local showtextures --display of durability textures
local showdura --display of durability percentage on items
local showrepair --display of item repair cost
local showitemlevel --display of item's item level

local function DCS_Set_Dura_Item_Positions()
	--It encompasses item repair, durability and, indirectly, durability bars.
	--making it work with local to DCSDuraRepair.lua variable
	--showdura = gdbprivate.gdb.gdbdefaults.dejacharacterstatsShowDuraChecked.ShowDuraSetChecked
	--local showdura = DCS_ShowDuraCheck:GetChecked()
	--local showrepair = DCS_ShowItemRepairCheck:GetChecked()
	--local showrepair = gdbprivate.gdb.gdbdefaults.dejacharacterstatsShowItemRepairChecked.ShowItemRepairSetChecked
	--print("called DCS_Set_Dura_Item_Positions") --debug for later
	for _, v in ipairs(DCSITEM_SLOT_FRAMES) do
		v.durability:ClearAllPoints()
		v.itemrepair:ClearAllPoints()
		v.ilevel:ClearAllPoints()		
		if showitemlevel then 
			v.ilevel:SetPoint("CENTER",v,"CENTER",1,-2)
			v.ilevel:SetFont("Fonts\\FRIZQT__.TTF", 14, "THINOUTLINE")
			if showdura then 
				v.durability:SetPoint("TOP",v,"TOP",3,-2)
				v.durability:SetFont("Fonts\\FRIZQT__.TTF", 11, "THINOUTLINE")
			end
			if showrepair then
				v.itemrepair:SetPoint("BOTTOM",v,"BOTTOM",1,0)
				v.itemrepair:SetFont("Fonts\\FRIZQT__.TTF", 11, "THINOUTLINE")
			end
		else
			if showdura then 
				if showrepair then
					v.durability:SetPoint("TOP",v,"TOP",3,-2)
					v.durability:SetFont("Fonts\\FRIZQT__.TTF", 11, "THINOUTLINE")
					v.itemrepair:SetPoint("BOTTOM",v,"BOTTOM",1,0)
					v.itemrepair:SetFont("Fonts\\FRIZQT__.TTF", 11, "THINOUTLINE")
				else --not showrepair
					v.durability:SetPoint("CENTER",v,"CENTER",1,-2)
					v.durability:SetFont("Fonts\\FRIZQT__.TTF", 15, "THINOUTLINE")
				end
			else --not showdura
				if showrepair then
					v.itemrepair:SetPoint("CENTER",v,"CENTER",0,-2)
					v.itemrepair:SetFont("Fonts\\FRIZQT__.TTF", 12, "THINOUTLINE")
				end
			end
		end		
	end
end

---------------------------------
-- Durability Mean Calculation --
---------------------------------
function DCS_Mean_DurabilityCalc()
	addon.duraMean = 0
	duraTotal = 0
	duraMaxTotal = 0
	for _, v in ipairs(DCSITEM_SLOT_FRAMES) do
		local slotId = v:GetID()
		local durCur, durMax = GetInventoryItemDurability(slotId)
		-- --------------------------
		-- -- Mean Durability Calc --
		-- --------------------------
		if durCur == nil then durCur = 0 end
		if durMax == nil then durMax = 0 end
		--if duraTotal == nil then duraTotal = 0 end -- does it ever happen? Yes, when all you wear are heirlooms
		--if duraMaxTotal == nil then duraMaxTotal = 0 end -- does it ever happen? Yes, when all you wear are heirlooms
		--if addon.duraMean == nil then addon.duraMean = 0 end -- does it ever happen? Yes, when all you wear are heirlooms
		
		duraTotal = duraTotal + durCur
		--if duraTotal == 0 then duraTotal = 1 	end
		duraMaxTotal = duraMaxTotal + durMax
	end
	if duraMaxTotal == 0 then 
		duraMaxTotal = 1
		duraTotal = 1 --if nothing to break then durability should be 100%
	end --puting outside of for loop
	addon.duraMean = ((duraTotal/duraMaxTotal)*100)
end		

-----------------------------------
-- Durability Frame Mean Display --
-----------------------------------
local function DCS_Durability_Frame_Mean_Display()
	--DCS_Mean_DurabilityCalc() -- DCS_Mean_DurabilityCalc called already before
	duraDurabilityFrameFS:SetFormattedText("%.0f%%", addon.duraMean)
	duraDurabilityFrameFS:Show()
--	print(addon.duraMean)
	if addon.duraMean == 100 then --If mean is 100 hide text % display
		duraDurabilityFrameFS:Hide()
	elseif addon.duraMean >= 80 then --If mean is 80% or greater color the text off-white.
		duraDurabilityFrameFS:SetTextColor(0.753, 0.753, 0.753)
	elseif addon.duraMean > 66 then --If mean is 66% or greater then color the text green.
		duraDurabilityFrameFS:SetTextColor(0, 1, 0)
	elseif addon.duraMean > 33 then --If mean is 33% or greater then color the text yellow.
		duraDurabilityFrameFS:SetTextColor(1, 1, 0)
	elseif addon.duraMean >= 0 then --If mean is 0% or greater then color the text red.
		duraDurabilityFrameFS:SetTextColor(1, 0, 0)
	end
end

-----------------------------------
-- Mean Durability Shirt Display --
-----------------------------------
local function DCS_Mean_Durability()
	DCS_Mean_DurabilityCalc()
	--for k, v in ipairs(DCSITEM_SLOT_FRAMES) do -- seems like the loop isn't needed
		duraMeanTexture:SetSize(4, (31*(addon.duraMean/100)))
		if addon.duraMean == 100 then 
			duraMeanTexture:SetColorTexture(0, 0, 0, 0)
		elseif addon.duraMean < 10 then
			duraMeanTexture:SetColorTexture(1, 0, 0)
			duraMeanFS:SetTextColor(1, 0, 0)
		elseif addon.duraMean < 33 then
			duraMeanTexture:SetColorTexture(1, 0, 0)
			duraMeanFS:SetTextColor(1, 0, 0)
		elseif addon.duraMean < 66 then
			duraMeanTexture:SetColorTexture(1, 1, 0)
			duraMeanFS:SetTextColor(1, 1, 0)
		elseif addon.duraMean < 80 then
			duraMeanTexture:SetColorTexture(0, 1, 0)
			duraMeanFS:SetTextColor(0, 1, 0)
		else --if addon.duraMean < 100 then -- no need to check, can remain as comment for easier understanding
			duraMeanTexture:SetColorTexture(0.753, 0.753, 0.753)
			duraMeanFS:SetTextColor(0.753, 0.753, 0.753)
		end
		if addon.duraMean > 10 then 
			duraMeanTexture:ClearAllPoints()
			duraMeanTexture:SetPoint("BOTTOMLEFT",DCS_CharacterShirtSlot,"BOTTOMRIGHT",1,3)
		else --if addon.duraMean <= 10 then -- no need to check, can remain as comment for easier understanding
			duraMeanTexture:ClearAllPoints()
			duraMeanTexture:SetAllPoints(DCS_CharacterShirtSlot)
			duraMeanTexture:SetColorTexture(1, 0, 0, 0.15)
		end
		--DCS_Durability_Frame_Mean_Display() -- moving outside for loop
	--end
	DCS_Durability_Frame_Mean_Display()
end

----------------------------
-- Item Durability Colors --
----------------------------
local function DCS_Item_DurabilityTop()
	for _, v in ipairs(DCSITEM_SLOT_FRAMES) do
		local slotId = v:GetID()
		local durCur, durMax = GetInventoryItemDurability(slotId)
		--if durCur == nil or durMax == nil then
		--	v.duratexture:SetColorTexture(0, 0, 0, 0)
		--	v.durability:SetFormattedText("")
		--elseif ( durCur == durMax ) then
		if ( durCur == durMax ) then
			v.duratexture:SetColorTexture(0, 0, 0, 0)
			v.durability:SetFormattedText("")
		else --if ( durCur ~= durMax ) then -- no need to check, can remain as comment for easier understanding
			duraFinite = ((durCur/durMax)*100)
			--print(duraFinite)
		    v.durability:SetFormattedText("%.0f%%", duraFinite)
			if duraFinite == 100 then
				v.duratexture:SetColorTexture(0,  0, 0, 0)
				v.durability:SetTextColor(0, 0, 0, 0)
			elseif duraFinite > 66 then
				v.duratexture:SetColorTexture(0, 1, 0)
				v.durability:SetTextColor(0, 1, 0)
			elseif duraFinite > 33 then
				v.duratexture:SetColorTexture(1, 1, 0)
				v.durability:SetTextColor(1, 1, 0)
			elseif duraFinite > 10 then
				v.duratexture:SetColorTexture(1, 0, 0)
				v.durability:SetTextColor(1, 0, 0)
			else --if duraFinite <= 10 then -- no need to check, can remain as comment for easier understanding
				--v.duratexture:SetAllPoints(v) -Removed so green boxes do not appear when durability is at zero.
				v.duratexture:SetColorTexture(1, 0, 0, 0.10)
				v.durability:SetTextColor(1, 0, 0)
			end
		end
		--DCS_Mean_DurabilityCalc() -- moving outside for loop
	end
	--DCS_Mean_DurabilityCalc() -- seems like it gets called even before this
end

gdbprivate.gdbdefaults.gdbdefaults.dejacharacterstatsShowDuraChecked = {
	ShowDuraSetChecked = false,
}	

local DCS_ShowDuraCheck = CreateFrame("CheckButton", "DCS_ShowDuraCheck", DejaCharacterStatsPanel, "InterfaceOptionsCheckButtonTemplate")
	DCS_ShowDuraCheck:RegisterEvent("PLAYER_LOGIN")
    DCS_ShowDuraCheck:RegisterEvent("UPDATE_INVENTORY_DURABILITY")
	DCS_ShowDuraCheck:ClearAllPoints()
	--DCS_ShowDuraCheck:SetPoint("TOPLEFT", 30, -315)
	DCS_ShowDuraCheck:SetPoint("TOPLEFT", "dcsItemsPanelCategoryFS", 7, -75)
	DCS_ShowDuraCheck:SetScale(1)
	DCS_ShowDuraCheck.tooltipText = L["Displays each equipped item's durability."] --Creates a tooltip on mouseover.
	_G[DCS_ShowDuraCheck:GetName() .. "Text"]:SetText(L["Item Durability"])

local event	--TODO: delete second variable event that might appear after merging
DCS_ShowDuraCheck:SetScript("OnEvent", function(self, ...)
	event = ...
	if event == "PLAYER_LOGIN" then
		showdura = gdbprivate.gdb.gdbdefaults.dejacharacterstatsShowDuraChecked.ShowDuraSetChecked
		self:SetChecked(showdura)
		DCS_Set_Dura_Item_Positions()
	end
	if showdura then
		DCS_Item_DurabilityTop()
	else
		for _, v in ipairs(DCSITEM_SLOT_FRAMES) do
			v.durability:SetFormattedText("")
		end
	end
	--[[
	local checked = gdbprivate.gdb.gdbdefaults.dejacharacterstatsShowDuraChecked.ShowDuraSetChecked
	self:SetChecked(checked)
	DCS_Set_Dura_Item_Positions()
	if checked then
		DCS_Item_DurabilityTop()
	else
		for _, v in ipairs(DCSITEM_SLOT_FRAMES) do
			v.durability:SetFormattedText("")
		end
	end
	--]]
end)

DCS_ShowDuraCheck:SetScript("OnClick", function(self)
	showdura = not showdura
	gdbprivate.gdb.gdbdefaults.dejacharacterstatsShowDuraChecked.ShowDuraSetChecked = showdura
	DCS_Set_Dura_Item_Positions() --same line irrespectfully of the condtition
	if showdura then
		DCS_Item_DurabilityTop()
	else
		for _, v in ipairs(DCSITEM_SLOT_FRAMES) do
			v.durability:SetFormattedText("")
		end
	end
	--[[
	local checked = self:GetChecked()
	gdbprivate.gdb.gdbdefaults.dejacharacterstatsShowDuraChecked.ShowDuraSetChecked = checked
	DCS_Set_Dura_Item_Positions() --same line irrespectfully of the condtition
	if checked then
		DCS_Item_DurabilityTop()
	else
		for _, v in ipairs(DCSITEM_SLOT_FRAMES) do
			v.durability:SetFormattedText("")
		end
	end
	--]]
end)

--------------------------------------
-- Durability Bar Textures Creation --
--------------------------------------
local function DCS_Durability_Bar_Textures()
	-- I see really similar loop in DCS_Item_DurabilityTop(), can't they be merged (of course, need to check whether they get called within the same condition)
	for _, v in ipairs(DCSITEM_SLOT_FRAMES_RIGHT) do
		local slotId = v:GetID()
		local durCur, durMax = GetInventoryItemDurability(slotId)

		--if durCur == nil or durMax == nil then
		--	v.duratexture:SetColorTexture(0, 0, 0, 0)
		--elseif ( durCur == durMax ) then
		if ( durCur == durMax ) then
			v.duratexture:SetColorTexture(0, 0, 0, 0)
		else --if ( durCur ~= durMax ) then -- no need to check, can remain as comment for easier understanding
			--duraFinite = ((durCur/durMax)*100)
			duraFinite = durCur/durMax
		end
		v.duratexture:SetPoint("BOTTOMLEFT",v,"BOTTOMRIGHT",1,3) -- might be interesting to put between else and end
		--v.duratexture:SetSize(4, (31*(duraFinite/100)))
		v.duratexture:SetSize(4, (31*duraFinite))
		v.duratexture:Show()
		--duraMeanTexture:Show() --no need to show the texture for shirt within loop; will be done by later code in DCS_ShowDuraTextureCheck
	end
	for _, v in ipairs(DCSITEM_SLOT_FRAMES_LEFT) do
		local slotId = v:GetID()
		local durCur, durMax = GetInventoryItemDurability(slotId)

		--if durCur == nil or durMax == nil then
		--	v.duratexture:SetColorTexture(0, 0, 0, 0)
		--elseif ( durCur == durMax ) then
		if ( durCur == durMax ) then
			v.duratexture:SetColorTexture(0, 0, 0, 0)
		else --if ( durCur ~= durMax ) then -- no need to check, can remain as comment for easier understanding
			--duraFinite = ((durCur/durMax)*100)
			duraFinite = durCur/durMax
		end
		v.duratexture:SetPoint("BOTTOMRIGHT",v,"BOTTOMLEFT",-2,3) -- might be interesting to put between else and end
		--v.duratexture:SetSize(3, (31*(duraFinite/100)))
		v.duratexture:SetSize(3, (31*duraFinite))
		v.duratexture:Show()
		--duraMeanTexture:Show() --no need to show the texture for shirt within loop; will be done by later code in DCS_ShowDuraTextureCheck
	end
end


gdbprivate.gdbdefaults.gdbdefaults.dejacharacterstatsShowDuraTextureChecked = {
	ShowDuraTextureSetChecked = true,
}	

local DCS_ShowDuraTextureCheck = CreateFrame("CheckButton", "DCS_ShowDuraTextureCheck", DejaCharacterStatsPanel, "InterfaceOptionsCheckButtonTemplate")
	DCS_ShowDuraTextureCheck:RegisterEvent("PLAYER_LOGIN")
    DCS_ShowDuraTextureCheck:RegisterEvent("UPDATE_INVENTORY_DURABILITY")
	DCS_ShowDuraTextureCheck:ClearAllPoints()
	--DCS_ShowDuraTextureCheck:SetPoint("TOPLEFT", 30, -275)
	DCS_ShowDuraTextureCheck:SetPoint("TOPLEFT", "dcsItemsPanelCategoryFS", 7, -35)
	DCS_ShowDuraTextureCheck:SetScale(1) 
	DCS_ShowDuraTextureCheck.tooltipText = L["Displays a durability bar next to each item."] --Creates a tooltip on mouseover.
	_G[DCS_ShowDuraTextureCheck:GetName() .. "Text"]:SetText(L["Durability Bars"])
	
DCS_ShowDuraTextureCheck:SetScript("OnEvent", function(self, ...)
	event = ...
	if event == "PLAYER_LOGIN" then
		showtextures = gdbprivate.gdb.gdbdefaults.dejacharacterstatsShowDuraTextureChecked.ShowDuraTextureSetChecked
		self:SetChecked(showtextures)
	end
	if showtextures then
		DCS_Durability_Bar_Textures()
		DCS_Mean_Durability()
		DCS_Item_DurabilityTop()
		duraMeanTexture:Show()
	else
		for _, v in ipairs(DCSITEM_SLOT_FRAMES) do
			v.duratexture:Hide()
		end
		duraMeanTexture:Hide()
	end
	--[[
	local checked = gdbprivate.gdb.gdbdefaults.dejacharacterstatsShowDuraTextureChecked.ShowDuraTextureSetChecked
	self:SetChecked(checked)
	if checked then
		DCS_Durability_Bar_Textures()
		DCS_Mean_Durability()
		DCS_Item_DurabilityTop()
		duraMeanTexture:Show()
	else
		for _, v in ipairs(DCSITEM_SLOT_FRAMES) do
			v.duratexture:Hide()
		end
		duraMeanTexture:Hide()
	end
	--]]
end)

DCS_ShowDuraTextureCheck:SetScript("OnClick", function(self)
	showtextures = not showtextures
	gdbprivate.gdb.gdbdefaults.dejacharacterstatsShowDuraTextureChecked.ShowDuraTextureSetChecked = showtextures
	if showtextures then
		DCS_Durability_Bar_Textures()
		DCS_Mean_Durability()
		DCS_Item_DurabilityTop()
		duraMeanTexture:Show()
	else
		for _, v in ipairs(DCSITEM_SLOT_FRAMES) do
			v.duratexture:Hide()
		end
		duraMeanTexture:Hide()
	end
	--[[
	local checked = self:GetChecked()
	gdbprivate.gdb.gdbdefaults.dejacharacterstatsShowDuraTextureChecked.ShowDuraTextureSetChecked = checked
	if checked then
		DCS_Durability_Bar_Textures()
		DCS_Mean_Durability()
		DCS_Item_DurabilityTop()
		duraMeanTexture:Show()
	else
		for _, v in ipairs(DCSITEM_SLOT_FRAMES) do
			v.duratexture:Hide()
		end
		duraMeanTexture:Hide()
	end
	--]]
end)

------------------------
-- Average Durability --
------------------------

gdbprivate.gdbdefaults.gdbdefaults.dejacharacterstatsShowAverageRepairChecked = {
	ShowAverageRepairSetChecked = false,
}	

local DCS_ShowAverageDuraCheck = CreateFrame("CheckButton", "DCS_ShowAverageDuraCheck", DejaCharacterStatsPanel, "InterfaceOptionsCheckButtonTemplate")
	DCS_ShowAverageDuraCheck:RegisterEvent("PLAYER_LOGIN")
    DCS_ShowAverageDuraCheck:RegisterEvent("UPDATE_INVENTORY_DURABILITY")
	DCS_ShowAverageDuraCheck:ClearAllPoints()
	--DCS_ShowAverageDuraCheck:SetPoint("TOPLEFT", 30, -295)
	DCS_ShowAverageDuraCheck:SetPoint("TOPLEFT", "dcsItemsPanelCategoryFS", 7, -55)
	DCS_ShowAverageDuraCheck:SetScale(1)
	DCS_ShowAverageDuraCheck.tooltipText = L["Displays average item durability on the character shirt slot and durability frames."] --Creates a tooltip on mouseover.
	_G[DCS_ShowAverageDuraCheck:GetName() .. "Text"]:SetText(L["Average Durability"])
	
	DCS_ShowAverageDuraCheck:SetScript("OnEvent", function(self, ...)
		event = ...
		if event == "PLAYER_LOGIN" then
			showavgdur = gdbprivate.gdb.gdbdefaults.dejacharacterstatsShowAverageRepairChecked.ShowAverageRepairSetChecked
			self:SetChecked(showavgdur)
		end
		if showavgdur then
			DCS_Mean_Durability()
			if addon.duraMean == 100 then --check after calculation
				duraMeanFS:SetFormattedText("")
			else
				duraMeanFS:SetFormattedText("%.0f%%", addon.duraMean)
			end
		else
			duraMeanFS:SetFormattedText("")
			duraDurabilityFrameFS:Hide()
		end
		--[[
		local checked = gdbprivate.gdb.gdbdefaults.dejacharacterstatsShowAverageRepairChecked
		self:SetChecked(checked.ShowAverageRepairSetChecked)
		if self:GetChecked(true) then
			DCS_Mean_Durability()
			if addon.duraMean == 100 then --check after calculation
				duraMeanFS:SetFormattedText("")
			else
				duraMeanFS:SetFormattedText("%.0f%%", addon.duraMean)
			end
		else
			duraMeanFS:SetFormattedText("")
			duraDurabilityFrameFS:Hide()
		end
		gdbprivate.gdb.gdbdefaults.dejacharacterstatsShowAverageRepairChecked.ShowAverageRepairSetChecked = self:GetChecked(true) -- moved out of if
		--]]
	end)

	DCS_ShowAverageDuraCheck:SetScript("OnClick", function(self)
		showavgdur = not showavgdur
		gdbprivate.gdb.gdbdefaults.dejacharacterstatsShowAverageRepairChecked.ShowAverageRepairSetChecked = showavgdur
		if showavgdur then
			DCS_Mean_Durability()
			if addon.duraMean == 100 then --check after calculation
				duraMeanFS:SetFormattedText("")
			else
				duraMeanFS:SetFormattedText("%.0f%%", addon.duraMean)
			end
		else
			duraMeanFS:SetFormattedText("")
			duraDurabilityFrameFS:Hide()
		end
		--[[
		local checked = self:GetChecked()
		gdbprivate.gdb.gdbdefaults.dejacharacterstatsShowAverageRepairChecked.ShowAverageRepairSetChecked = checked
		if checked then
			DCS_Mean_Durability()
			if addon.duraMean == 100 then --check after calculation
				duraMeanFS:SetFormattedText("")
			else
				duraMeanFS:SetFormattedText("%.0f%%", addon.duraMean)
			end
		else
			duraMeanFS:SetFormattedText("")
			duraDurabilityFrameFS:Hide()
		end
		--]]
		--[[
		local checked = gdbprivate.gdb.gdbdefaults.dejacharacterstatsShowAverageRepairChecked
		if self:GetChecked(true) then
			DCS_Mean_Durability()
			if addon.duraMean == 100 then --check after calculation
				duraMeanFS:SetFormattedText("")
			else
				duraMeanFS:SetFormattedText("%.0f%%", addon.duraMean)
			end
		else
			duraMeanFS:SetFormattedText("")
			duraDurabilityFrameFS:Hide()
		end
		gdbprivate.gdb.gdbdefaults.dejacharacterstatsShowAverageRepairChecked.ShowAverageRepairSetChecked = self:GetChecked(true) -- moved out of if
		--]]
	end)


----------------------
-- Item Repair Cost --
----------------------
local function DCS_Item_RepairCostBottom()
	for _, v in ipairs(DCSITEM_SLOT_FRAMES) do
		local slotId = v:GetID()
		local itemInfo = C_TooltipInfo.GetInventoryItem("player", slotId)
		if (itemInfo) then
			TooltipUtil.SurfaceArgs(itemInfo)
			local repairitemCost = itemInfo.repairCost
			if (repairitemCost == nil or repairitemCost<=0) then
				v.itemrepair:SetFormattedText("")
			elseif (repairitemCost>999999) then -- 99G 99s 99c
				v.itemrepair:SetTextColor(1, 0.843, 0)
				v.itemrepair:SetFormattedText("%.0fg", (repairitemCost/10000))
			elseif (repairitemCost>9999) then -- 99s 99c
				v.itemrepair:SetTextColor(1, 0.843, 0)
				v.itemrepair:SetFormattedText("%.2fg", (repairitemCost/10000))
			elseif (repairitemCost>99) then -- 99c
				v.itemrepair:SetTextColor(0.753, 0.753, 0.753)
				v.itemrepair:SetFormattedText("%.2fs", (repairitemCost/100))
			else
				v.itemrepair:SetTextColor(0.722, 0.451, 0.200)
				v.itemrepair:SetFormattedText("%.0fc", repairitemCost)
			end
		end
	end
end


---Total repair cost as stat is in DCSTables.lua
-----------------------
-- Total Repair Cost --
-----------------------
--local repairitemCostTotal -- making it to look like a normal function
--local function DCS_Item_RepairTotal()
--	local repairitemCostTotal = 0
--	for k, v in ipairs(DCSITEM_SLOT_FRAMES) do
--		local slotId = v:GetID()
--		local scanTool = CreateFrame("GameTooltip")
--			scanTool:ClearLines()
--		local repairnewitemCost = select(3, scanTool:SetInventoryItem("player", slotId))
--		repairitemCostTotal = repairitemCostTotal + repairnewitemCost
		--print(repairitemCostTotal)
--	end
--	return repairitemCostTotal
--end

-------------------------
-- Repair Total "Stat" --
-------------------------
--function PaperDollFrame_SetRepairTotal(statFrame, unit)
--	if ( unit ~= "player" ) then
--		statFrame:Hide();
--		return;
--	end
--	local repairitemCostTotal = DCS_Item_RepairTotal()
--	local gold = floor(abs(repairitemCostTotal / 10000))
--	local silver = floor(abs(mod(repairitemCostTotal / 100, 100)))
--	local copper = floor(abs(mod(repairitemCostTotal, 100)))
	--print(format("I have %d gold %d silver %d copper.", gold, silver, copper))

--	local displayRepairTotal = format("%dg %ds %dc", gold, silver, copper);

	--STAT_FORMAT
	-- PaperDollFrame_SetLabelAndText(statFrame, label, text, isPercentage, numericValue) -- Formatting

--	PaperDollFrame_SetLabelAndText(statFrame, (L["Repair Total"]), displayRepairTotal, false, repairitemCostTotal);
--	statFrame.tooltip = HIGHLIGHT_FONT_COLOR_CODE..format(PAPERDOLLFRAME_TOOLTIP_FORMAT, format(L["Repair Total %s"], displayRepairTotal));
--	statFrame.tooltip2 = (L["Total equipped item repair cost before discounts."]);

--	statFrame:Show();
	--repairitemCostTotal = 0 -- now that there's a fucntion there's no need to reset it
--end


gdbprivate.gdbdefaults.gdbdefaults.dejacharacterstatsShowItemRepairChecked = {
	ShowItemRepairSetChecked = false,
}	

local DCS_ShowItemRepairCheck = CreateFrame("CheckButton", "DCS_ShowItemRepairCheck", DejaCharacterStatsPanel, "InterfaceOptionsCheckButtonTemplate")
	DCS_ShowItemRepairCheck:RegisterEvent("PLAYER_LOGIN")
	DCS_ShowItemRepairCheck:RegisterEvent("UPDATE_INVENTORY_DURABILITY")
	DCS_ShowItemRepairCheck:RegisterEvent("MERCHANT_SHOW")
	DCS_ShowItemRepairCheck:RegisterEvent("MERCHANT_CLOSED")
	DCS_ShowItemRepairCheck:ClearAllPoints()
	--DCS_ShowItemRepairCheck:SetPoint("TOPLEFT", 30, -335)
	DCS_ShowItemRepairCheck:SetPoint("TOPLEFT", "dcsItemsPanelCategoryFS", 7, -95)
	DCS_ShowItemRepairCheck:SetScale(1)
	DCS_ShowItemRepairCheck.tooltipText = L["Displays each equipped item's repair cost."] --Creates a tooltip on mouseover.
	_G[DCS_ShowItemRepairCheck:GetName() .. "Text"]:SetText(L["Item Repair Cost"])
	
DCS_ShowItemRepairCheck:SetScript("OnEvent", function(self, ...)
	event = ...
	if event == "PLAYER_LOGIN" then
		showrepair = gdbprivate.gdb.gdbdefaults.dejacharacterstatsShowItemRepairChecked.ShowItemRepairSetChecked
		self:SetChecked(showrepair)
		DCS_Set_Dura_Item_Positions()
	end
	if showrepair then
		DCS_Item_RepairCostBottom()
	else
		for _, v in ipairs(DCSITEM_SLOT_FRAMES) do
			v.itemrepair:SetFormattedText("")
		end
	end
	--[[
	local checked = gdbprivate.gdb.gdbdefaults.dejacharacterstatsShowItemRepairChecked.ShowItemRepairSetChecked
	self:SetChecked(checked)
	DCS_Set_Dura_Item_Positions()
	if checked then
		DCS_Item_RepairCostBottom()
	else
		for _, v in ipairs(DCSITEM_SLOT_FRAMES) do
			v.itemrepair:SetFormattedText("")
		end
	end
	--]]
end)

DCS_ShowItemRepairCheck:SetScript("OnClick", function(self)
	showrepair = not showrepair
	gdbprivate.gdb.gdbdefaults.dejacharacterstatsShowItemRepairChecked.ShowItemRepairSetChecked = showrepair
	DCS_Set_Dura_Item_Positions()
	if showrepair then
		DCS_Item_RepairCostBottom()
	else
		for _, v in ipairs(DCSITEM_SLOT_FRAMES) do
			v.itemrepair:SetFormattedText("")
		end
	end
	--[[
	local checked = self:GetChecked()
	gdbprivate.gdb.gdbdefaults.dejacharacterstatsShowItemRepairChecked.ShowItemRepairSetChecked = checked
	DCS_Set_Dura_Item_Positions()
	if checked then
		DCS_Item_RepairCostBottom()
	else
		for _, v in ipairs(DCSITEM_SLOT_FRAMES) do
			v.itemrepair:SetFormattedText("")
		end
	end
	--]]
end)

------------------------------
-- Item Level Display Check --
------------------------------

local function DCS_Item_Level_Center()
	local summar_ilvl = 0
	local _, equipped = GetAverageItemLevel()
	--print("Dura", DCSRelicTotal)
	--equipped = round(equipped * 16)
	equipped = equipped * 16 --in tested cases worked without rounding	
	local ITEM_LEVEL_PATTERN = ITEM_LEVEL:gsub("%%d", "(%%d+)") --moving outside of the function might not be warranted but moving outside of for loop is
	local tooltip = CreateFrame("GameTooltip", "DCSScanTooltip", nil, "GameTooltipTemplate") --TODO: use the same frame for both repairs and itemlevel
	tooltip:SetOwner(UIParent, "ANCHOR_NONE")
	for _, v in ipairs(DCSITEM_SLOT_FRAMES) do
		local itemLink = GetInventoryItemLink("player", v:GetID())
		if not itemLink then
			v.ilevel:SetFormattedText("")
		else
			tooltip:ClearLines()
			tooltip:SetHyperlink(itemLink)
			for i = 2, tooltip:NumLines() do
				local text = _G["DCSScanTooltipTextLeft"..i]:GetText()
				if(text and text ~= "") then
					local value = tonumber(text:match(ITEM_LEVEL_PATTERN))
					if value then
						local _, _, itemRarity = GetItemInfo(itemLink) --least scope for itemRarity
						v.ilevel:SetTextColor(GetItemQualityColor(itemRarity))
						if (itemRarity == 6) then 	--supposedly only artifacts after crucible return wrong ilvl
							value = (equipped - summar_ilvl)/2
						else
							summar_ilvl = summar_ilvl + value
						end
						v.ilevel:SetText(value)
					end
				end
			end
		end
	end
end

gdbprivate.gdbdefaults.gdbdefaults.dejacharacterstatsShowItemLevelChecked = {
	ShowItemLevelSetChecked = true,
}

local DCS_ShowItemLevelCheck = CreateFrame("CheckButton", "DCS_ShowItemLevelCheck", DejaCharacterStatsPanel, "InterfaceOptionsCheckButtonTemplate")
	DCS_ShowItemLevelCheck:RegisterEvent("PLAYER_LOGIN")
	DCS_ShowItemLevelCheck:ClearAllPoints()
	--DCS_ShowItemLevelCheck:SetPoint("TOPLEFT", 30, -255)
	DCS_ShowItemLevelCheck:SetPoint("TOPLEFT", "dcsItemsPanelCategoryFS", 7, -15)
	DCS_ShowItemLevelCheck:SetScale(1)
	DCS_ShowItemLevelCheck.tooltipText = L["Displays the item level of each equipped item."] --Creates a tooltip on mouseover.
	_G[DCS_ShowItemLevelCheck:GetName() .. "Text"]:SetText(L["Item Level"])
	
DCS_ShowItemLevelCheck:SetScript("OnEvent", function(self, ...)
	showitemlevel = gdbprivate.gdb.gdbdefaults.dejacharacterstatsShowItemLevelChecked.ShowItemLevelSetChecked
	self:SetChecked(showitemlevel)
	DCS_Set_Dura_Item_Positions()
	DCS_Item_Level_Center()
end)

DCS_ShowItemLevelCheck:SetScript("OnClick", function(self)
	showitemlevel = not showitemlevel
	gdbprivate.gdb.gdbdefaults.dejacharacterstatsShowItemLevelChecked.ShowItemLevelSetChecked = showitemlevel
	DCS_Set_Dura_Item_Positions() --is this call needed? (Yes, it is -Deja)
	if showitemlevel then --TODO: rewrite of DCS_Item_Level_Center because in 3 places the same code
		DCS_Item_Level_Center()
	else
		for _, v in ipairs(DCSITEM_SLOT_FRAMES) do
			v.ilevel:SetFormattedText("")
		end
	end
end)

local DCS_ShowItemLevelChange = CreateFrame("Frame", "DCS_ShowItemLevelChange", UIParent)
	DCS_ShowItemLevelChange:RegisterEvent("PLAYER_EQUIPMENT_CHANGED")
	DCS_ShowItemLevelChange:RegisterEvent("PLAYER_SPECIALIZATION_CHANGED")
	
DCS_ShowItemLevelChange:SetScript("OnEvent", function(self, ...)
	if PaperDollFrame:IsVisible() then
		--print("PaperDollFrame:IsVisible")
		if showitemlevel then
		--print("showitemlevel")
			C_Timer.After(0.25, DCS_Item_Level_Center) --Event fires before Artifact changes so we have to wait a fraction of a second.
		else
			for _, v in ipairs(DCSITEM_SLOT_FRAMES) do
				v.ilevel:SetFormattedText("")
			end
		end
	end
end)

PaperDollFrame:HookScript("OnShow", function(self)
	if showitemlevel then
		DCS_Item_Level_Center()
	else
		for _, v in ipairs(DCSITEM_SLOT_FRAMES) do
			v.ilevel:SetFormattedText("")
		end
	end
end)
