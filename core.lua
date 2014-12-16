-- Development Utilities
-- This file intentionally blank for non internal release
--@do-not-package@
local core=LibStub("AceAddon-3.0"):NewAddon('LibinitCoreUtils',"AceConsole-3.0") --#Core
LoadAddOn("Blizzard_DebugTools")
function core:OnInitialize()
	self:RegisterChatCommand("mark","Mark")
end
local lastframe
function core:Mark(args,chatFrame)
	local point,frame=self:GetArgs(args,2)
	if (not frame) then frame=lastframe end
	if (not frame) then self:Print("Error: no frame") return end
	self:Print("Anchoring to ",frame:GetName(),point)
	local AXI
	if (not AXI) then AXI=CreateFrame("Frame","AXI",UIParent,"GarrisonAbilityCounterTemplate") end
	if (not point) then AXI:Hide() return end
	AXI:ClearAllPoints()
	AXI:SetPoint(point,frame)
	AXI.Border:SetVertexColor(1,0,0)
	AXI:SetFrameLevel(999)
	AXI:Show()
end
print("Loaded core utils")
--@end-do-not-package@
