local MAJOR_VERSION = "LibInit"
local MINOR_VERSION = 1
GAME_LOCALE="itIT"
if (LibStub(MAJOR_VERSION,MINOR_VERSION)) then return end -- Already Loaded
local l=LibStub("AceLocale-3.0")
-- To avoid clash between versions, localization is versione on major and minor
-- Lua strings are immutable so having more copies of the same string does not waist a noticeable slice of memory
local me=MAJOR_VERSION .. MINOR_VERSION
--@do-not-package@
local L=l:NewLocale(me,"enUS",true,true)
L["Configuration"] = true
L["Description"] = true
L["Libraries"] = true
L["Release Notes"] = true
L["Toggles"] = true
L=l:NewLocale(me,"ptBR")
if (L) then
L["Configuration"] = "configura\195\167\195\163o"
L["Description"] = "Descri\195\167\195\163o"
L["Libraries"] = "bibliotecas"
L["Release Notes"] = "Notas de Lan\195\167amento"
L["Toggles"] = "Alterna"
return
end
L=l:NewLocale(me,"frFR")
if (L) then
L["Configuration"] = "configuration"
L["Description"] = "description"
L["Libraries"] = "biblioth\195\168ques"
L["Release Notes"] = "notes de version"
L["Toggles"] = "Bascule"
return
end
L=l:NewLocale(me,"deDE")
if (L) then
L["Configuration"] = "Konfiguration"
L["Description"] = "Beschreibung"
L["Libraries"] = "Bibliotheken"
L["Release Notes"] = "Release Notes"
L["Toggles"] = "Schaltet"
return
end
L=l:NewLocale(me,"koKR")
if (L) then
L["Configuration"] = "\234\181\172\236\132\177"
L["Description"] = "\236\132\164\235\170\133"
L["Libraries"] = "\235\157\188\236\157\180\235\184\140\235\159\172\235\166\172"
L["Release Notes"] = "\235\166\180\235\166\172\236\138\164 \235\133\184\237\138\184"
L["Toggles"] = "\236\160\132\237\153\152"
return
end
L=l:NewLocale(me,"esMX")
if (L) then
L["Configuration"] = "Configuraci\195\179n"
L["Description"] = "Descripci\195\179n"
L["Libraries"] = "Bibliotecas"
L["Release Notes"] = "Notas de la versi\195\179n"
L["Toggles"] = "Alterna"
return
end
L=l:NewLocale(me,"ruRU")
if (L) then
L["Configuration"] = "\208\154\208\190\208\189\209\132\208\184\208\179\209\131\209\128\208\176\209\134\208\184\209\143"
L["Description"] = "\208\158\208\191\208\184\209\129\208\176\208\189\208\184\208\181"
L["Libraries"] = "\208\145\208\184\208\177\208\187\208\184\208\190\209\130\208\181\208\186\208\184"
L["Release Notes"] = "\208\159\209\128\208\184\208\188\208\181\209\135\208\176\208\189\208\184\209\143 \208\186 \208\178\209\139\208\191\209\131\209\129\208\186\209\131"
L["Toggles"] = "\208\159\208\181\209\128\208\181\208\186\208\187\209\142\209\135\208\181\208\189\208\184\208\181"
end
L=l:NewLocale(me,"zhCN")
if (L) then
L["Configuration"] = "\233\133\141\231\189\174"
L["Description"] = "\232\175\180\230\152\142"
L["Libraries"] = "\229\155\190\228\185\166\233\166\134"
L["Release Notes"] = "\229\143\145\232\161\140\232\175\180\230\152\142"
L["Toggles"] = "\229\136\135\230\141\162"
return
end
L=l:NewLocale(me,"esES")
if (L) then
L["Configuration"] = "Configuraci\195\179n"
L["Description"] = "Descripci\195\179n"
L["Libraries"] = "Bibliotecas"
L["Release Notes"] = "Notas de la versi\195\179n"
L["Toggles"] = "Alterna"
return
end
L=l:NewLocale(me,"zhTW")
if (L) then
L["Configuration"] = "\233\133\141\231\189\174"
L["Description"] = "\232\175\180\230\152\142"
L["Libraries"] = "\229\155\190\228\185\166\233\166\134"
L["Release Notes"] = "\229\143\145\232\161\140\232\175\180\230\152\142"
L["Toggles"] = "\229\136\135\230\141\162"
return
end
L=l:NewLocale(me,"itIT")
if (L) then
L["Configuration"] = "Configurazione"
L["Description"] = "Descrizione"
L["Libraries"] = "Librerie"
L["Release Notes"] = "Note di rilascio"
L["Toggles"] = "Interruttori"
end
if true then return end
--@end-do-not-package@
local L=l:NewLocale(me,"enUS",true,true)
--@localization(locale="enUS", format="lua_additive_table" , escape-non-ascii=true, same-key-is-true=true, handle-unlocalized="blank" )@
L=l:NewLocale(me,"ptBR")
if (L) then
--@localization(locale="ptBR", format="lua_additive_table" , escape-non-ascii=true, same-key-is-true=true, handle-unlocalized="blank" )@
return
end
L=l:NewLocale(me,"frFR")
if (L) then
--@localization(locale="frFR", format="lua_additive_table" , escape-non-ascii=true, same-key-is-true=true, handle-unlocalized="blank" )@
return
end
L=l:NewLocale(me,"deDE")
if (L) then
--@localization(locale="deDE", format="lua_additive_table" , escape-non-ascii=true, same-key-is-true=true, handle-unlocalized="blank" )@
return
end
L=l:NewLocale(me,"itIT")
if (L) then
--@localization(locale="itIT", format="lua_additive_table" , escape-non-ascii=true, same-key-is-true=true, handle-unlocalized="blank" )@
return
end
L=l:NewLocale(me,"koKR")
if (L) then
--@localization(locale="koKR", format="lua_additive_table" , escape-non-ascii=true, same-key-is-true=true, handle-unlocalized="blank" )@
return
end
L=l:NewLocale(me,"esMX")
if (L) then
--@localization(locale="esMX", format="lua_additive_table" , escape-non-ascii=true, same-key-is-true=true, handle-unlocalized="blank" )@
return
end
L=l:NewLocale(me,"ruRU")
if (L) then
--@localization(locale="ruRU", format="lua_additive_table" , escape-non-ascii=true, same-key-is-true=true, handle-unlocalized="blank" )@
return
end
L=l:NewLocale(me,"zhCN")
if (L) then
--@localization(locale="zhCN", format="lua_additive_table" , escape-non-ascii=true, same-key-is-true=true, handle-unlocalized="blank" )@
return
end
L=l:NewLocale(me,"esES")
if (L) then
--@localization(locale="esES", format="lua_additive_table" , escape-non-ascii=true, same-key-is-true=true, handle-unlocalized="blank" )@
return
end
L=l:NewLocale(me,"zhTW")
if (L) then
--@localization(locale="zhTW", format="lua_additive_table" , escape-non-ascii=true, same-key-is-true=true, handle-unlocalized="blank" )@
return
end