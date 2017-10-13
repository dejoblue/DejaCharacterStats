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

DejaCharacterStatsDBPC = {nil,nil}
local framelog = CreateFrame("FRAME","DCS_LOCALISATION_STRINGS");
framelog:RegisterEvent("PLAYER_LOGOUT");
framelog:SetScript("OnEvent", function(self, event, arg1)
	if event == "PLAYER_LOGOUT" then
		DejaCharacterStatsDBPC = L
	end
end)


