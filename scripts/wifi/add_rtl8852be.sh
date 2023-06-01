#!/bin/bash
set -eu

pushd kernel
kernel_ver=`make CROSS_COMPILE=aarch64-linux-gnu- ARCH=arm64 kernelrelease`
popd
modules_dir=$(readlink -f ./out/output_*_kmodules/lib/modules/${kernel_ver})
[ -d ${modules_dir} ] || {
	echo "please build kernel first."
	exit 1
}
firmware_dir="$(pwd)/rtl8852be/lib/firmware/rtw89"
config_dir="$(pwd)/rtl8852be/etc/modules.d/"
mkdir ${firmware_dir} ${config_dir} -p

# download firmware
wget http://lwfinger.com/download/rtw8852b_fw-1.bin -O ${firmware_dir}/rtw8852b_fw-1.bin
wget http://lwfinger.com/download/rtw8852b_fw.bin -O ${firmware_dir}/rtw8852b_fw.bin
wget http://lwfinger.com/download/rtw8851b_fw.bin -O ${firmware_dir}/rtw8851b_fw.bin
wget http://lwfinger.com/download/rtw8852a_fw.bin -O ${firmware_dir}/rtw8852a_fw.bin
wget http://lwfinger.com/download/rtw8852c_fw.bin -O ${firmware_dir}/rtw8852c_fw.bin
wget https://github.com/armbian/firmware/blob/master/rtl8852bu_fw -O ${firmware_dir}/rtl8852bu_fw.bin

# build wifi driver
git clone https://github.com/lwfinger/rtw89.git -b main
(cd rtw89 && {
	git reset 38b8a48d04b8440266db6ea730e9b9cf84463981 --hard
	export PATH=/opt/FriendlyARM/toolchain/11.3-aarch64:$PATH
	make CROSS_COMPILE=aarch64-linux-gnu- ARCH=arm64 -C ../kernel M=$(pwd)
	cp *.ko ${modules_dir}/ -afv
})

# load module on boot
echo "rtw_8852be" > ${config_dir}/11-rtw89

# add files to rootfs
if ! grep -q rtl8852be .current_config.mk; then
	echo "FRIENDLYWRT_FILES+=(rtl8852be)" >> .current_config.mk
fi
