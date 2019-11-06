#!/bin/sh

git clone https://github.com/zeroeightysix/KAMI.git KAMI-OLD
git clone https://github.com/S-B99/KAMI.git KAMI

mv ./KAMI-OLD/build.gradle KAMI
mv ./KAMI-OLD/gradle KAMI
mv ./KAMI-OLD/gradle.properties KAMI
mv ./KAMI-OLD/gradlew KAMI

rm -rf ./KAMI-OLD

cd ./KAMI

sed -i 's/KAMI Blue/KAMI Green/g' ./src/main/resources/mcmod.info
sed -i 's/KAMI Blue/KAMI Green/g' ./src/main/java/me/zeroeightsix/kami/KamiMod.java

./gradlew build

mv ./build/libs/KAMI-*-release.jar ../KAMI-Green.jar

cd ..

rm -rf KAMI
