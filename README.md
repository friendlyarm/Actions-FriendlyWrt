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