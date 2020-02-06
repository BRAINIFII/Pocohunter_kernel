#!/bin/bash

#set -e

## Copy this script inside the kernel directory

echo "**** Setting Toolchain ****"

export CROSS_COMPILE=../toolchain/aarch64-linux-android-4.9/bin/aarch64-linux-android-

export CROSS_COMPILE_ARM32=../toolchain/arm-linux-androideabi-4.9/bin/arm-linux-androideabi-

export ARCH=arm64

export SUBARCH=arm64

#export NDKPATH=~/Desktop/Kernel_Q/ndk/android-ndk-r21c

export CCOMPILE=$CROSS_COMPILE

#export ANDROID_SYSROOT=~/Desktop/Kernel_Q/ndk/android-ndk-r21c/platforms/android-18/arch-arm64

echo "**** Done Setting Toolchain ****"

echo -e "$blue***********************************************"
echo "          Starting menuconfig         "
echo -e "***********************************************$nocol"
make O=out menuconfig


echo "************"
echo "*	  DONE	 *"
echo "************"
#sha1sum $ANDROIDDIR/kernel/$FINAL_KERNEL_ZIP

