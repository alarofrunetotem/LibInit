#!/bin/bash
cd $(dirname $0) or exit
(
echo 'local LibStub=LibStub'
echo 'local MAJOR_VERSION="LibInit"'
echo 'local libinit,MINOR_VERSION = LibStub("LibInit")'
echo 'if not libinit then return end'
echo 'local me=MAJOR_VERSION .. MINOR_VERSION'
echo 'local l=LibStub("AceLocale-3.0")'
for lang in "enUS" "ptBR" "frFR" "deDE" "itIT" "koKR" "esMX" "ruRU" "zhCN" "esES" "zhTW" ; do
#for lang in enUS ; do	
	if [ $lang = "enUS" ] ; then 
		echo 'local L=l:NewLocale(me,"enUS",true,true)'
	else 
		echo "L=l:NewLocale(me,'$lang')" 
	fi
	echo 'if L then'
		../wowhelpers/lua-gettext.php -d -l $lang | grep -v "L = L or {}"
	echo 'end'
done
echo 'libinit:_SetLocalization(l:GetLocale(me,true))'
echo
) >newlocale.lua
if luac -p newlocale.lua ; then
	echo "Compiled fine"
	cp newlocale.lua localization.lua 
	cp newlocale.lua LibInit/localization.lua 
	rm -f newlocale.lua 	
else
	echo "Check lua syntax"
fi