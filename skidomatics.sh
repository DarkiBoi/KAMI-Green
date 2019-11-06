#!/bin/sh

git clone https://github.com/zeroeightysix/KAMI.git KAMI
git clone https://github.com/S-B99/KAMI.git KAMI-BLUE

mv KAMI/build.gradle KAMI-BLUE
mv KAMI/gradle KAMI-BLUE
mv KAMI/gradle.properties KAMI-BLUE
mv KAMI/gradlew KAMI-BLUE

rm -rf KAMI

cd KAMI-BLUE

sed -i 's/KAMI Blue/KAMI Green/g' src/main/resources/mcmod.info
sed -i 's/KAMI Blue/KAMI Green/g' src/main/java/me/zeroeightsix/kami/KamiMod.java

./gradlew build

mv build/libs/KAMI-*-release.jar ../KAMI-Green.jar

cd ..

rm -rf KAMI-BLUE
