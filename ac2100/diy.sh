# Uncomment a feed source
#sed -i 's/^#\(.*helloworld\)/\1/' feeds.conf.default

# Add a feed source
#sed -i '$a src-git lienol https://github.com/Lienol/openwrt-package' feeds.conf.default
sed -i '$a src-git custom https://github.com/garypang13/openwrt-packages.git' feeds.conf.default
#sed -i '$a src-git helloworld https://github.com/fw876/helloworld' feeds.conf.default
#sed -i '$a src-git luci-theme-edge https://github.com/garypang13/luci-theme-edge' feeds.conf.default

#添加自定义插件链接（自己想要什么就github里面搜索然后添加）
#rm -rf ./package/lean/argon&& git clone -b 18.06 https://github.com/jerrykuku/luci-theme-argon.git package/lean/luci-theme-argon  #新的argon主题
#git clone https://github.com/jerrykuku/luci-app-argon-config package/lean/luci-app-argon-config  #argon主题设置
#git clone https://github.com/garypang13/luci-theme-edge package/lean/luci-theme-edge

# Modify default IP
sed -i 's/192.168.1.1/192.168.2.1/g' package/base-files/files/bin/config_generate

# 修改 argon 为默认主题
sed -i 's/luci-theme-bootstrap/luci-theme-edge/g' feeds/luci/collections/luci/Makefile

# 修改主机名字，把OpenWrt-123修改你喜欢的就行（不能使用中文）
#sed -i '/OpenWrt/i\uci set system.@system[0].hostname='OpenWrt-Lede'' package/lean/default-settings/files/zzz-default-settings

# 版本号里显示一个自己的名字（N·M build $(TZ=UTC-8 date "+%Y.%m.%d") @ 这些都是后增加的）
#sed -i "s/OpenWrt /OpenWrt $(TZ=UTC-8 date "+%Y.%m.%d") @ OpenWrt /g" package/lean/default-settings/files/zzz-default-settings

# 设置密码为空（安装固件时无需密码登陆，然后自己修改想要的密码）
#sed -i 's@.*CYXluq4wUazHjmCDBCqXF*@#&@g' package/lean/default-settings/files/zzz-default-settings

sed -i '1i src/gz openwrt_custom https://op.supes.top/packages/mipsel' /etc/opkg/distfeeds.conf
