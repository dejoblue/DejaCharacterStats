local _, gdbprivate = ...

gdbprivate.gdbdefaults.gdbdefaults.DCSShirtItemLink = {
	ShirtItemLink = nil
}	

local DCS_ILvlFix = CreateFrame("CheckButton", "DCS_ILvlFix", DejaCharacterStatsPanel, "InterfaceOptionsCheckButtonTemplate")
	DCS_ILvlFix:RegisterEvent("PLAYER_LOGIN")
	
DCS_ILvlFix:SetScript("OnEvent", function(self, ...)
	local itemLink = GetInventoryItemLink("player", CharacterShirtSlot:GetID())
	local function DCSEquipShirt() 
		EquipItemByName(itemLink, 4) 
	end
	if itemLink then
		gdbprivate.gdb.gdbdefaults.DCSShirtItemLink.ShirtItemLink = itemLink
		EquipmentManager_RunAction(EquipmentManager_UnequipItemInSlot(4))
		C_Timer.After(2, DCSEquipShirt)
	else
		itemLink = gdbprivate.gdb.gdbdefaults.DCSShirtItemLink.ShirtItemLink
		DCSEquipShirt() 
	end
end)
	
PaperDollFrame:HookScript("OnShow", function(self)
	local itemLink = gdbprivate.gdb.gdbdefaults.DCSShirtItemLink.ShirtItemLink
	EquipItemByName(itemLink, 4) 
end)