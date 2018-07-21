#!/bin/bash

echo -n " Enter current Version: "
read o

echo -n " Enter Version to update to: "
read a



echo "Are the mods,configs,exc... folders located somewhere in : update/$a/"


echo -n "Is this directory correct(y/n):"
read t




if [ "$t" = "y" ]; then

rm -Rf mods.old config.old libraries.old scripts.old

mv config config.old
mv mods mods.old
mv scripts scripts.old
#mv libraries libraries.old


for f in ./update/$a/*
do

cp -Rv "$f"/mods ./
cp -Rv "$f"/config ./
cp -Rv "$f"/scripts ./
#cp -Rv "$f"/libraries ./
#cp "$f"/forge.jar ./

done

cp -Rv update/servermods/* ./



replace "v$o" "v$a" -- server.properties



else
   ./update.sh

fi