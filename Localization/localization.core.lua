--Phanx localization code @ phanx.net

local _, namespace = ...
namespace.locale = GetLocale()
--print("at core",namespace.locale)
local L = setmetatable({}, { __index = function(t, k)
	local v = tostring(k)
	rawset(t, k, v)
	return v
end })

namespace.L = L

--For use on enGB template. Press "C" and afterwards execute macros "/dcstats" and "/dcstats config". After that reload UI through a macro "/console reloadui". Most of used localisation strings should be saved in DejaCharacterStatsDBPC.
--Can capture only one label of dynamic buttons like All Stats/Relevant Stats. Same is for mouse-over tooltip. To record them, click the ebuttons!
--However, Lock/Unlock button is recorded because both states got displayed in previous actions.
--Slash commands should also be be saved.
DejaCharacterStatsDBPC = {nil,nil}
local framelog = CreateFrame("FRAME","DCS_LOCALISATION_STRINGS");
framelog:RegisterEvent("PLAYER_LOGOUT");
framelog:SetScript("OnEvent", function(self, event, arg1)
	if event == "PLAYER_LOGOUT" then
		DejaCharacterStatsDBPC = L
	end
end)


