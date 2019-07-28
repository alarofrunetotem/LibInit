#!/bin/bash
cd $(dirname $0) | exit
ldoc=/usr/bin/ldoc
$ldoc .
