# 使用 GitHub Actions 编译 FriendlyWrt
[English](README_en.md)
### 基本信息 
- 用户名：root
- 密码：password
- 后台IP：192.168.2.1
- 固件下载地址： https://github.com/friendlyarm/Actions-FriendlyWrt/releases
- 更多使用说明: https://wiki.friendlyelec.com/wiki/index.php/Template:FriendlyWrt21/zh
### 固件说明
- 同一固件文件同时支持安装至SD和eMMC，不作区分
### 如何将固件写入eMMC  
- 先将固件写入一张SD卡，然后从SD启动系统，访问FriendyWrt后台页面，进入菜单“系统”->“eMMC刷机助手”，上传固件文件直接刷入即可，文件无需解压，写入完成后，将SD卡弹出, 设备会自动重启并从eMMC引导系统。
### 更新说明
* 2025/06/30
    *  更新到新版本 openwrt-24.10.2
    *  更新了内核网络部分的配置
* 2025/06/25
    *  增加 NanoPi-R3S-LTS 支持
* 2025/06/06
    *  增加 NanoPi-M5 支持
    *  增加 RTL8851BU 无线网卡的支持
* 2025/03/24
    *  修正opt分区inode过小的问题
    *  从eMMC启动时，为内存超1G设备重新启用eMMC刷机助手
* 2025/02/28
    *  更新到新版本 openwrt-24.10.0
    *  RK33xx内核更新至6.6.78+
    *  调整分区：固定根分区大小，增加独立分区以提升 Docker 存储性能，恢复出厂设置后该分区数据仍会得到保留
* 2025/02/11
    *  RK35xx内核更新至6.1.99
* 2024/12/09
    *  修正luci-app-diskman插件的显示问题 (thanks [helmx](https://github.com/helmx))
* 2024/10/16
    *  更新到新版本 openwrt-23.05.5
    *  增加 NanoPi-Zero2 支持
* 2024/09/14 增加NanoPi-R3S支持
* 2024/08/30
    *  更新到新版本 openwrt-23.05.4
    *  增加 NanoPi-M6 支持
* 2024/07/03
    *  修复因固件丢失而导致的WIFI问题
* 2024/06/06
    *  RK35xx内核更新至6.1.57
* 2024/03/29
    *  更新到新版本 openwrt-23.05.3
* 2024/02/02
    *  为模块rtl8822ce增加无线中继模式的支持,[设置方法](https://wiki.friendlyelec.com/wiki/index.php/NanoPi_R5C/zh#.E6.97.A0.E7.BA.BF.E4.B8.AD.E7.BB.A7.E6.A8.A1.E5.BC.8F)
* 2023/12/22
    *  更新到新版本 openwrt-23.05.2
    *  修正eMMC刷机工具对大容量eMMC的兼容性问题
* 2023/10/31
    *  更新到新版本 openwrt-23.05.0
    *  内核更新至6.1
* 2023/07/04
    *  内核更新至5.10.160 (rk3568/rk3588)
* 2023/06/10
    *  增加 MediaTek MT7921 无线网卡的支持
* 2023/05/31
    *  增加 NanoPC-T6 支持
    *  更新 v22.03 到新版本 openwrt-22.03.5
    *  更新 v21.02 到新版本 openwrt-21.02.7
* 2023/04/26
    *  增加 R5C-2GB 支持
    *  更新 v22.03 到新版本 openwrt-22.03.4
    *  更新 v21.02 到新版本 openwrt-21.02.6
* 2023/03/15
    *  增加R6C支持
    *  更新initramfs,[可禁用OverlayFS或者创建额外的分区](https://wiki.friendlyelec.com/wiki/index.php/How_to_use_overlayfs_on_Linux/zh)
* 2023/03/01
    *  更新到新版本 openwrt-22.03.3
    *  为rk3568/rk3588的5.10内核增加ntfs3驱动
    *  更新内核小版本
    *  更新网卡驱动
* 2022/12/04
    *  增加R5C支持
    *  修正存储空间某些情况下无法扩展的问题
    *  加强eMMC刷机工具的刷机稳定性
* 2022/11/24
    *  修正R6S 1G网口不可用问题  
    *  eMMC刷机工具现可以在eMMC启动时使用  
* 2022/11/01 增加R6S支持
* 2022/10/09 首次发布
### Thanks / 致谢
- [luci-app-diskman](https://github.com/lisaac/luci-app-diskman)
- [luci-theme-argon](https://github.com/jerrykuku/luci-theme-argon)
- [P3TERX](https://github.com/P3TERX/Actions-OpenWrt)
- [NanoPi-R1S-Build-By-Actions](https://github.com/skytotwo/NanoPi-R1S-Build-By-Actions)
- [QiuSimons](https://github.com/QiuSimons/YAOF)
