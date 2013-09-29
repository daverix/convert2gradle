#!/bin/bash

# remove bin and gen
rm -rf bin
rm -rf gen

# move src to src/main/java
if [ -d src ]; then
    mv src java
    mkdir -p src/main
    mv java src/main/
fi

# move res to src/main/res
if [ -d res ]; then
    mv res src/main/
fi

# move assets to src/main/assets
if [ -d assets ]; then
    mv assets src/main/
fi

# move AndroidManifest.xml to src/main/AndroidManifest.xml
if [ -f AndroidManifest.xml ]; then
    mv AndroidManifest.xml src/main/
fi

# TODO: create build.gradle file

# TODO: create build.gradle and settings.gradle in root folder

# TODO: download gradlew, gradlew.bat gradle/ into root folder

