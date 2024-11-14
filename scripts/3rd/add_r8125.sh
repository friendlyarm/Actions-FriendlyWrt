#!/bin/bash
set -eu
top_path=$(pwd)

# prepare toolchain and get the kernel version
export PATH=/opt/FriendlyARM/toolchain/11.3-aarch64/bin/:$PATH
pushd kernel
    kernel_ver=`make CROSS_COMPILE=aarch64-linux-gnu- ARCH=arm64 kernelrelease`
popd
modules_dir=$(readlink -f ./out/output_*_kmodules/lib/modules/${kernel_ver})
[ -d ${modules_dir} ] || {
	echo "please build kernel first."
	exit 1
}

# build kernel driver
git clone https://github.com/zeroday0619/r8125 -b main
pushd r8125/src
	make ARCH=arm64 CROSS_COMPILE=aarch64-linux-gnu- -C ${top_path}/kernel M=$(pwd)
	aarch64-linux-gnu-strip --strip-unneeded r8125.ko
	cp r8125.ko ${modules_dir}/
popd

# prepare rootfs overlay
tmp_dir="${top_path}/r8125-files/etc/modules.d/"
mkdir ${tmp_dir} -p
echo "r8125" > ${tmp_dir}/10-r8125
echo "FRIENDLYWRT_FILES+=(r8125-files)" >> .current_config.mk
