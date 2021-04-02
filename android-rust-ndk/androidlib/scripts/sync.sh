#!/bin/sh

./scripts/build.sh
# ABI paths taken from 
# https://developer.android.com/ndk/guides/abis

JNIDIR=../androidapp/app/lib/

mkdir -p $JNIDIR/arm64/
cp target/aarch64-linux-android/release/libandroidlib.so \
   $JNIDIR/arm64/ -v

mkdir -p $JNIDIR/armeabi/
cp target/armv7-linux-androideabi/release/libandroidlib.so \
   $JNIDIR/armeabi/ -v

mkdir -p $JNIDIR/x86/
cp target/i686-linux-android/release/libandroidlib.so \
   $JNIDIR/x86/ -v

mkdir -p $JNIDIR/x86_64/
cp target/x86_64-linux-android/release/libandroidlib.so \
   $JNIDIR/x86_64/ -v
