function debugstack() return "LibInit.lua:11" end
function GetItemQualityColor(i) return 1,1,1,"0x010101" end
function GetRealmName() return "Runetotem" end
function UnitName(unit) return "Alar" end
function UnitClass(unit)return "DRUID" end
function UnitRace(unit) return "NIGHTELF" end
function UnitFactionGroup(unit) return "ALLIANCE" end
function GetLocale() return "enus" end
function GetCurrentRegion() return 3 end
function GetBuildInfo() return 1,2,3,70100,3 end
function wipe(tbl)
	for k,v in pairs(tbl) do tbl[k]=nil end
end
local frame={}
function frame:RegisterEvent(...)end
function frame:SetScript(...)end
function frame:Hide() end
function CreateFrame() return frame end
VIDEO_OPTIONS_DISABLED="Off"
VIDEO_OPTIONS_ENABLED="On"
NUM_ITEM_QUALITIES=1
ITEM_QUALITY1_DESC="Common"
strmatch=string.match
strlower=string.lower
GAME_LOCALE="itIT"
require("LibInit/Ace3/LibStub/LibStub")
loadfile("LibInit/Ace3/CallbackHandler-1.0/CallbackHandler-1.0.lua")()
loadfile("LibInit/Ace3/AceAddon-3.0/AceAddon-3.0.lua")()
loadfile("LibInit/Ace3/AceConfig-3.0/AceConfigRegistry-3.0/AceConfigRegistry-3.0.lua")()
loadfile("LibInit/Ace3/AceConfig-3.0/AceConfigCmd-3.0/AceConfigCmd-3.0.lua")()
loadfile("LibInit/Ace3/AceConfig-3.0/AceConfig-3.0.lua")()
loadfile("LibInit/Ace3/AceConsole-3.0/AceConsole-3.0.lua")()
loadfile("LibInit/Ace3/AceDB-3.0/AceDB-3.0.lua")()
loadfile("LibInit/Ace3/AceDBOptions-3.0/AceDBOptions-3.0.lua")()
loadfile("LibInit/Ace3/AceEvent-3.0/AceEvent-3.0.lua")()
loadfile("LibInit/Ace3/AceGUI-3.0/AceGUI-3.0.lua")()
loadfile("LibInit/Ace3/AceHook-3.0/AceHook-3.0.lua")()
loadfile("LibInit/Ace3/AceLocale-3.0/AceLocale-3.0.lua")()
--loadfile("LibInit/Ace3/AceTimer-3.0/AceTimer-3.0.lua")()
require("LibInit/colorize")
require("LibInit/factory")
require("LibInit/LibInit")
local p=print
function print(...) p("TT:",...) end
function dump(tbl)
	print("Table:",tbl)
	for k,v in pairs(tbl) do print("",k,v) end
	print("")
end
local lib=LibStub("LibInit")
local new=lib.NewTable
local del=lib.DelTable
data=new()
data.data=1
data2=new()
data2.data2=1
print("data",data,getmetatable(data))
print("data2",data2,getmetatable(data2))
data[1]="ciao"
data[2]=data2
dump(data)
dump(data2)
del(data,true)
dump(data)
data=new()
data[3]="ciao"
dump(data)
dump(data2)
dump(lib.pool)
del(data2)
dump(lib.pool)

