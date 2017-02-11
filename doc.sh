#!/bin/bash
cd $(dirname $0) or exit
ldoc=/usr/local/bin/ldoc
$ldoc -X -x md -D sort=true -l '../wowhelpers/ldoc/md' -d doc LibInit/LibInit.lua
$ldoc -X -x md -D sort=true-l '../wowhelpers/ldoc/md' -d doc LibInit/factory.lua
$ldoc .
