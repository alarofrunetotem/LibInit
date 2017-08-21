#!/bin/bash
release=Release-r1158
#source=svn://svn.wowace.com/wow/ace3/mainline/tags/$release
source=https://repos.wowace.com/wow/ace3/tags/$release
mkdir -p LibInit/Ace3
libxml=LibInit/libs.xml
echo '<?xml version="1.0" encoding="utf-8"?>' >$libxml
echo '<Ui xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance" xmlns="http://www.blizzard.com/wow/ui/" xsi:schemaLocation="http://www.blizzard.com/wow/ui/..\FrameXML\UI.xsd">' >>$libxml
for module in LibStub CallbackHandler-1.0 AceAddon-3.0 AceGUI-3.0 AceConfig-3.0 AceConsole-3.0 AceDB-3.0 AceDBOptions-3.0 AceEvent-3.0 AceHook-3.0 AceLocale-3.0 AceTimer-3.0; do
	echo "Exporting module $module from $source"
	if [ $module = "LibStub" ] ; then
		echo "<Script file=\"Ace3\\LibStub\\LibStub.lua\" />" >>$libxml
	else
		echo "<Include file=\"Ace3\\$module\\$module.xml\" />" >>$libxml
	fi
	svn export --force $source/$module LibInit/Ace3/$module
done
echo '</Ui>' >>$libxml

