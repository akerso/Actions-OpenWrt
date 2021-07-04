# Uncomment a feed source
#sed -i 's/^#\(.*helloworld\)/\1/' feeds.conf.default

# Add a feed source
#sed -i '$a src-git lienol https://github.com/Lienol/openwrt-package' feeds.conf.default
#sed -i '$a src-git custom https://github.com/garypang13/openwrt-packages.git' feeds.conf.default
sed -i '$a src-git helloworld https://github.com/fw876/helloworld' feeds.conf.default


#添加自定义插件链接（自己想要什么就github里面搜索然后添加）
rm -rf ./package/lean/luci-theme-argon&& git clone -b 18.06 https://github.com/jerrykuku/luci-theme-argon.git package/lean/luci-theme-argon  #新的argon主题
git clone https://github.com/jerrykuku/luci-app-argon-config package/lean/luci-app-argon-config  #argon主题设置
#git clone https://github.com/garypang13/luci-theme-edge package/lean/luci-theme-edge

