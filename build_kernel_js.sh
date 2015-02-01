#!/bin/bash

export ARCH=arm
export CROSS_COMPILE=/home/hiepgia/toolchain/arm-eabi-4.7/bin/arm-eabi-

mkdir output

make -j5 -C $(pwd) O=output msm8974_sec_defconfig VARIANT_DEFCONFIG=msm8974_sec_hlte_skt_defconfig SELINUX_DEFCONFIG=selinux_defconfig
make -j5 -C $(pwd) O=output

cp output/arch/arm/boot/Image $(pwd)/arch/arm/boot/zImage
