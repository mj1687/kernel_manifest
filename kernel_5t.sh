#! /bin/bash

clear
echo "Compilazione avviata"
export CROSS_COMPILE=gcc-aarch64/bin/aarch64-linux-android-
export ARCH=arm64
export DEFCONFIG=oneplus5_defconfig

cd source_5t
make clean
make mrproper
cd ..
rm -rf out
mkdir out
make source_5t 0=out ARCH DEFCONFIG -j8
