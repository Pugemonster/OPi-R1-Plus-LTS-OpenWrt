#!/bin/bash
#
# Copyright (c) 2023 Pugemon
#
# This is free software, licensed under the MIT License.
# See /LICENSE for more information.
#
# https://github.com/Pugemon/OPi-R1-Plus-LTS-OpenWrt
# Description: Build OpenWrt using GitHub Actions
#

# Modify default IP
sed -i 's/192.168.1.1/192.168.0.1' package/base-files/files/bin/config_generate

#Download Argon theme and ruAntiBlock
cd package
git clone https://github.com/jerrykuku/luci-theme-argon.git
git clone https://github.com/gSpotx2f/ruantiblock_openwrt.git
cd -
