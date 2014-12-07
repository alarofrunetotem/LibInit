local __FILE__=tostring(debugstack(1,2,0):match("(.*):1:")) -- MUST BE LINE 1
local MAJOR_VERSION = "LibInit"
local MINOR_VERSION = 1
local me, ns = ...
local module,old=LibStub:NewLibrary(MAJOR_VERSION,MINOR_VERSION)
if (not module) then return end -- Already exists this same version
local lib=module --#Lib
function lib:New(name,...)
	local ACE=LibStub("AceAddon-3.0")
	if (not ACE) then
		error("Could not find ACE-3 Library")
		return
	end
	local addon=ACE:NewAddon(name,'AceDB-3.0','AceDBOptions-3.0','AceLocale-3.0','AceConfig-3.0')
	for i=1,select('#',...) do
		ACE:EmbedLibrary(addon,'Ace' .. select(i,...) .. '-3.0',false,4)
	end
end
--[[
function tt:print(...)
	 if (self and self~=tt) then
			print(tt,self,...)
	 else
			print(tt,...)
	 end
end
p=tt.print
--]]