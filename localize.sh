#!/bin/bash
cd $(dirname $0) or exit
(
grep -e "local MAJOR" -e "local MINOR" LibInit/LibInit.lua
echo "local me=MAJOR_VERSION"
echo 'local l=LibStub("AceLocale-3.0")'
echo "local loaded=l:GetLocale(me,true)"
echo "if loaded and loaded['MINOR'] and loaded['MINOR'] >= MINOR_VERSION then"
echo "--@debug@"
echo "	_G.print('LibInit dictionary already at revision' ..loaded['MINOR'])"
echo "--@end-debug@"
echo "	return"
echo "end"
for lang in "enUS" "ptBR" "frFR" "deDE" "itIT" "koKR" "esMX" "ruRU" "zhCN" "esES" "zhTW" ; do
#for lang in enUS ; do	
	if [ $lang = "enUS" ] ; then 
		echo 'local L=l:NewLocale(me,"enUS",true,true)'
	else 
		echo "L=l:NewLocale(me,'$lang')" 
	fi
	echo 'if L then'
	echo 'L["MINOR"]=MINOR_VERSION'
		../wowhelpers/lua-gettext.php -d -l $lang | grep -v "L = L or {}"
	echo 'end'
done
) >newlocale.lua
if luac -p newlocale.lua ; then
	echo "Compiled fine"
	cp newlocale.lua localization.lua 
	cp newlocale.lua LibInit/localization.lua 
	rm -f newlocale.lua 	
else
	echo "Check lua syntax"
fi