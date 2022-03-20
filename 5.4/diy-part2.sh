# Modify default IP
sed -i 's/192.168.1.1/192.168.2.1/g' package/base-files/files/bin/config_generate

# 修改 argon 为默认主题
sed -i 's/luci-theme-bootstrap/luci-theme-argon/g' feeds/luci/collections/luci/Makefile

# 修改主机名字，把OpenWrt-123修改你喜欢的就行（不能使用中文）
#sed -i '/OpenWrt/i\uci set system.@system[0].hostname='OpenWrt-Lede'' package/lean/default-settings/files/zzz-default-settings

# 版本号里显示一个自己的名字（N·M build $(TZ=UTC-8 date "+%Y.%m.%d") @ 这些都是后增加的）
#sed -i "s/OpenWrt /OpenWrt $(TZ=UTC-8 date "+%Y.%m.%d") @ OpenWrt /g" package/lean/default-settings/files/zzz-default-settings

# 设置密码为空（安装固件时无需密码登陆，然后自己修改想要的密码）
sed -i 's@.*CYXluq4wUazHjmCDBCqXF*@#&@g' package/lean/default-settings/files/zzz-default-settings

#sed -i '1i src/gz openwrt_custom https://op.supes.top/packages/mipsel' /etc/opkg/distfeeds.conf

#sed -i 's/KERNEL_PATCHVER:=5.4/KERNEL_PATCHVER:=5.10/g' target/linux/ramips/Makefile

#git clone  https://github.com/kiddin9/luci-theme-edge.git package/luci-theme-edge
git clone  https://github.com/linkease/istore.git package/istore
git clone  https://github.com/riverscn/openwrt-iptvhelper.git package/openwrt-iptvhelper
git clone -b 18.06 https://github.com/riverscn/luci-app-omcproxy.git package/luci-app-omcproxy

./scripts/feeds update -a
./scripts/feeds install -a
