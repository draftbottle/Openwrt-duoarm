# SPDX-License-Identifier: GPL-2.0-only
#
# Copyright (C) 2022 OpenWrt.org
#

include $(TOPDIR)/rules.mk
include $(INCLUDE_DIR)/kernel.mk

PKG_RELEASE:=1
PKG_VERSION:=2021.10

PKG_SOURCE_PROTO:=git
PKG_SOURCE_URL=https://github.com/milkv-duo/u-boot-2021.10
PKG_SOURCE_VERSION:=a57aa1f29bb62dd9bc0c5f22b74520b8225d321f


include $(INCLUDE_DIR)/u-boot.mk
include $(INCLUDE_DIR)/package.mk


define Build/Prepare
    $(call Build/Prepare/Default)
	$(warning print....................... Build/Prepare: ${SUBTARGET} $$(DEVICE_DTS)  $(STAGING_DIR_IMAGE) )
	cp files/$(SUBTARGET)/$(BUILD_DEVICES)_defconfig $(PKG_BUILD_DIR)/configs/$(BUILD_VARIANT)_defconfig
	cp files/$(SUBTARGET)/dts/*.dts $(PKG_BUILD_DIR)/arch/aarch64/dts/
	cp files/$(SUBTARGET)/dts/*.dtsi $(PKG_BUILD_DIR)/arch/aarch64/dts/
	cp files/$(SUBTARGET)/dts/cvi_board_memmap.h $(PKG_BUILD_DIR)/arch/aarch64/dts/
	cp files/$(SUBTARGET)/cvitek.h $(PKG_BUILD_DIR)/include/sg2000/
	cp files/$(SUBTARGET)/cvi_board_init.c $(PKG_BUILD_DIR)/board/sg2000/
endef


define U-Boot/Default
	BUILD_TARGET:=sophgo
	BUILD_DEVICES=$(1)
	UBOOT_IMAGE:=u-boot.bin
	DTS_DIR:=arch/aarch64/dts
	UENV:=default
endef

# sophgo boards

define U-Boot/milkvduo256m
	NAME:=Sophgo milk-v duo256m
	UBOOT_DTS:=cv1812cp_milkv_duo256m_sd.dtb
	BUILD_DEVICES:=cvitek_cv1812cp_milkv_duo256m_sd
	UBOOT_MAKE_FLAGS := \
		CHIP=cv1812cp \
		CVIBOARD=milkv_duo256m_sd \
		BOARD=cv181x \
		CHIP_SEGMENT=cv181x
endef

define U-Boot/milkvduos-aarch64
	NAME:=Sophgo milk-v sg2000
	UBOOT_DTS:=sg2000_milkv_duos_glibc_arm64_sd.dtb
	BUILD_DEVICES:=sg2000_milkv_duos_glibc_arm64_sd
	UBOOT_MAKE_FLAGS := \
		CHIP=sg2000 \
		CVIBOARD=milkv_duos_sd \
		BOARD=sg2000 \
		CHIP_SEGMENT=sg2000
endef


UBOOT_TARGETS := \
	milkvduo256m \
	milkvduos


define Build/InstallDev
	$(INSTALL_DIR) $(BIN_DIR)
	mkdir -p $(STAGING_DIR_IMAGE)
	$(CP) $(PKG_BUILD_DIR)/u-boot.bin $(STAGING_DIR_IMAGE)/u-boot.bin
endef

$(eval $(call BuildPackage/U-Boot))
