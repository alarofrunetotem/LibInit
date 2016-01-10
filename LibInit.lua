-- Development Utilities
-- This file intentionally blank for non internal release
--@do-not-package@
local core=LibStub("LibInit"):NewAddon('LibinitCoreUtils',"AceConsole-3.0") --#Core
local print=print
LoadAddOn("Blizzard_DebugTools")
LoadAddOn("LibDebug")
if LibDebug then
	LibDebug()
else
	print("Missing LibDebug",LibDebug)
end
function core:OnInitialized()
	self:RegisterChatCommand("mark","Mark")
	self:AddLabel("LibInit Core Utils Loaded")
	for major,_ in LibStub:IterateLibraries() do
		local l,minor=LibStub:GetLibrary(major)
		print(major,minor)
	end
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
print("Loaded Libinit Core Utils")
--@end-do-not-package@
