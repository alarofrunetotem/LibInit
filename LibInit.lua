-- Development Utilities
-- This file intentionally blank for non internal release
--@do-not-package@
local core = LibStub("LibInit"):NewAddon('LibinitCoreUtils', "AceConsole-3.0") --#Core
function _G.AlarMessage(message)
	print("|cffff9900" .. message .. "|r")
end
AlarMessage("|cffff9900LibInit standalone|r")
AlarDbg = true
C_AddOns.LoadAddOn("Blizzard_DebugTools")
function core:OnInitialized()
	self:RegisterChatCommand("mark", "Mark")
end

local lastframe
local AXI
function core:Mark(args, chatFrame)
	local point, frame = self:GetArgs(args, 2)
	if (not frame) then frame = lastframe end
	if (not frame) then
		self:Print("Error: no frame")
		return
	end
	self:Print("Anchoring to ", frame:GetName(), point)
	if (not AXI) then AXI = CreateFrame("Frame", "AXI", UIParent, "GarrisonAbilityCounterTemplate") end
	if (not point) then
		AXI:Hide()
		return
	end
	AXI:ClearAllPoints()
	AXI:SetPoint(point, frame)
	AXI.Border:SetVertexColor(1, 0, 0)
	AXI:SetFrameLevel(999)
	AXI:Show()
end

core:Print("Loaded Libinit Core Utils")
--@end-do-not-package@
