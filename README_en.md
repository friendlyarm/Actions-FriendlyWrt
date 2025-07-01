# Build FriendlyWrt using GitHub Actions
[查看中文](README.md)
### General info 
- User：root
- Password：password
- IP：192.168.2.1
- Download： https://github.com/friendlyarm/Actions-FriendlyWrt/releases
- Document: https://wiki.friendlyelec.com/wiki/index.php/Template:FriendlyWrt21/zh
### About image file
- The same image file supports installation to both SD and eMMC
### How to write image to eMMC  
- First write the image to an SD card, then boot the system from the SD card, visit the FriendyWrt admin page, go to the menu "System" -> "eMMC Tools", upload the image file and flash it in directly, no need to decompress the file, after the flashing is completed, eject the SD card, the device will automatically reboot and boot from the eMMC.
### Changelog
* 2025/06/30
    *  Updated to openwrt-24.10.2
    *  Updated the kernel network-related configuration
* 2025/06/25
    *  Add support for NanoPi-R3S-LTS
* 2025/06/06
    *  Add support for NanoPi-M5
    *  Add support for the RTL8851BU wireless adapter
* 2025/03/24
    * Fix insufficient inodes in the opt partition
    * Re-enable the eMMC-Tools for devices with over 1G memory when booting from eMMC
* 2025/02/28
    * Updated to openwrt-24.10.0
    * RK33xx kernel updated to 6.6.78+
    * Partition adjustment: Fixed the root partition size and added an independent partition to improve Docker storage performance. Data on this partition will be retained after a factory reset.
* 2025/02/11
    * RK35xx kernel updated to 6.1.99
* 2024/12/09
    * Fixed display issue in luci-app-diskman plugin (thanks [helmx](https://github.com/helmx))
* 2024/10/16
    *  Upgrade to openwrt-23.05.5
    *  Add support for NanoPi-Zero2
* 2024/09/14 Add support for NanoPi-R3S
* 2024/08/30
    *  Upgrade to openwrt-23.05.4
    *  Add support for NanoPi-M6
* 2024/07/03
    *  Fix the wifi issue due to missing firmware
* 2024/06/06
    *  RK35xx kernel version updated to 6.1.57
* 2024/03/29
    *  Upgrade to openwrt-23.05.3
* 2024/02/02
    *  Add wireless repeater mode support for rtl8822ce,[How-to-use](https://wiki.friendlyelec.com/wiki/index.php/NanoPi_R5C#Wireless_Repeater_Mode)
* 2023/12/22
    *  Upgrade to openwrt-23.05.2
    *  Improve stability of the eMMC Tools
* 2023/10/31
    *  Upgrade to openwrt-23.05.0
    *  Bump kernel version to 6.1
* 2023/07/04
    *  Bump kernel version to 5.10.160 (rk3568/rk3588)
* 2023/06/10
    *  Add support for MediaTek MT7921 wireless card
* 2023/05/31
    *  Add support for NanoPC-T6
    *  Upgrade v22.03 to openwrt-22.03.5
    *  Upgrade v21.02 to openwrt-21.02.7
* 2023/04/26
    *  Add support for R5C-2GB
    *  Upgrade v22.03 to openwrt-22.03.4
    *  Upgrade v21.02 to openwrt-21.02.6
* 2023/03/15
    *  Add support for NanoPi-R6C
    *  Update initramfs,[you can disable or resize OverlayFS](https://wiki.friendlyelec.com/wiki/index.php/How_to_use_overlayfs_on_Linux)
* 2023/03/01
    *  Upgrade to openwrt-22.03.3
    *  Add ntfs3 driver for 5.10 kernel (for R6S/R5S/R5C)
    *  Update kernel
    *  Update the r8125 driver
* 2022/12/04
    *  Add support for NanoPi-R5C
    *  Fix the issue that the storage space cannot be expanded
    *  Improve stability of the eMMC Tools
* 2022/11/24
    *  Fix R6S 1G LAN port issue
    *  eMMC-Tools can be run on eMMC
* 2022/11/01 Add support for NanoPi-R6S
* 2022/10/09 Initial commit
### For more information
Please first take a look at [our Wiki](https://wiki.friendlyelec.com) which covers the most basics.  
Should you have any additional question, please send a mail to techsupport@friendlyarm.com, and we are willing to help.  
### Acknowledgments
- [luci-app-diskman](https://github.com/lisaac/luci-app-diskman)
- [luci-theme-argon](https://github.com/jerrykuku/luci-theme-argon)
- [P3TERX](https://github.com/P3TERX/Actions-OpenWrt)
- [NanoPi-R1S-Build-By-Actions](https://github.com/skytotwo/NanoPi-R1S-Build-By-Actions)
- [QiuSimons](https://github.com/QiuSimons/YAOF)
