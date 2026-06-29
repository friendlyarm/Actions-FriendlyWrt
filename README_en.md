# Build FriendlyWrt using GitHub Actions
[查看中文](README.md)
### General info 
- User：root
- Password：password
- IP：192.168.2.1
- Download： https://github.com/friendlyarm/Actions-FriendlyWrt/releases
- Document: https://wiki.friendlyelec.com/wiki/index.php/Template:FriendlyWrt21/zh
### About the Files
- XYZ.img.gz: SD/eMMC system image. Can be written to an SD card or eMMC to boot.
- images-XYZ.tgz: Upgrade package. For use with the "eMMC Tools" only; cannot be written directly to an SD card to boot.
### How to Flash to eMMC
- First-time installation: Write XYZ.img.gz to an SD card and boot the system. Go to the FriendlyWrt admin panel → "System" → "eMMC Tools" and upload the file to flash it directly (no need to decompress). When it finishes, eject the SD card and the device will automatically reboot from eMMC.
- Minor version upgrade (e.g., 25.12.2 → 25.12.3): Flash images-XXYYZZ.tgz via the "eMMC Tools". You may choose to keep existing data, but compatibility should be evaluated on your own.
- Major version upgrade (e.g., 24.10 → 25.12): It is recommended to [back up your configuration](https://openwrt.org/docs/guide-user/troubleshooting/backup_restore) first, then perform a full installation using XYZ.img.gz to avoid compatibility issues.
### Changelog
* 2026/06/25
    *  Add support for onboard WiFi on NanoPC-T4 and NanoPi-M4v2
* 2026/06/09
    *  Updated RK33xx kernel to 6.6.134, optimized kernel configuration, fixed an issue where USB devices occasionally failed to work after reboot
    *  Added support for NanoPi-M6V2
* 2026/06/05
    *  Updated to openwrt-25.12.4
* 2026/04/29
    *  Updated to openwrt-25.12.2
    *  Updated the "eMMC Tools" to improved stability and support for more formats
    *  Enabled built-in fq_codel queue scheduler in kernel to improve network latency
* 2026/03/06
    * Added support for NanoPi‑NEO3-Plus
* 2025/12/31
    * Updated to openwrt-24.10.4
    * RK35xx kernel updated to 6.1.141
* 2025/08/04
    * RK35xx kernel updated to 6.1.118
* 2025/07/09
    *  Added support for NanoPi‑R76S
    *  Fixed PWM fan control issue (using the pwm-fan driver module)
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
