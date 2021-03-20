#!/bin/bash

mkdir -p dist
mkdir -p build/ch/vennard/demojar
mkdir -p build/META-INF

javac src/ch/vennard/demojar/demoapp.java
cp -v src/ch/vennard/demojar/DemoApp.class build/ch/vennard/demojar/
cp -v res/MANIFEST.MF build/META-INF/

pushd build
zip -r ../dist/demojar.jar .
popd

java -jar dist/demojar.jar
