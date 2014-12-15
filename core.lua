-- Development Utilitis
if (LibStub("AceAddon-3.0"):GetAddon("LibinitCoreUtils",true)) then return end
local core=LibStub("AceAddon-3.0"):newAddon('LibinitCoreUtils',"AceConsole-3.0") --#Core
function core:OnInitialize()
	self:RegisterChatCommand("mark","mark")
end
function core:Mark(...)
end
