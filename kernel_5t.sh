#! /bin/bash

clear
echo "Compilazione avviata"
export CROSS_COMPILE=~/Sorgenti/kernels/5t/gcc-aarch64/bin/aarch64-linux-android-
export ARCH=arm64

cd source_5t
make clean
make mrproper
make oneplus5_defconfig
rm -rf ../out
mkdir ../out
make 0=../out ARCH=arm64 -j8

#cd wlan && make clean && cd ..

#make -C kernel/ M=../wlan/ O=../out/ modules WLAN_ROOT=../wlan/ MODNAME=wlan BOARD_PLATFORM=msm8976 CONFIG_PRONTO_WLAN=m

echo Done!

