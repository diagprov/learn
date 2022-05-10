#!/bin/bash

mkdir -p dist
mkdir -p build/META-INF

javac -d build src/ch/vennard/learn/Swing.java
cp -v res/MANIFEST.MF build/META-INF/

pushd build
zip -r ../dist/swing.jar .
popd

java -jar dist/swing.jar
