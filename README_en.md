# Build FriendlyWrt using GitHub Actions
[查看中文](README.md)
### General Information  
- User：root
- Password：password
- IP：192.168.2.1
- Download： https://github.com/friendlyarm/Actions-FriendlyWrt/releases
- Document: https://wiki.friendlyelec.com/wiki/index.php/Template:FriendlyWrt21/zh
### About Image File
- The same image file supports installation to both SD and eMMC
### How to write image to eMMC  
- First write the image to an SD card, then boot the system from the SD card, visit the FriendyWrt admin page, go to the menu "System" -> "eMMC Tools", upload the image file and flash it in directly, no need to decompress the file, after the flashing is completed, eject the SD card, the device will automatically reboot and boot from the eMMC.
### Changelog
2022/10/09
 - Initial commit
### Acknowledgments
- [luci-app-diskman](https://github.com/lisaac/luci-app-diskman)
- [luci-theme-argon](https://github.com/jerrykuku/luci-theme-argon)
- [P3TERX](https://github.com/P3TERX/Actions-OpenWrt)
- [NanoPi-R1S-Build-By-Actions](https://github.com/skytotwo/NanoPi-R1S-Build-By-Actions)
- [QiuSimons](https://github.com/QiuSimons/YAOF)