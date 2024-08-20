# SPDX-License-Identifier: GPL-2.0-only
#
# Copyright (C) 2022 Toco Technologies <info@toco.ae>
#
include $(TOPDIR)/rules.mk

ARCH:=aarch64
BOARD:=sophgo
BOARDNAME:=Sophgo U-based ARM board
FEATURES:=ext4
KERNELNAME:=Image
SUBTARGETS:=sg2000

KERNEL_PATCHVER:=5.15


include $(INCLUDE_DIR)/target.mk

# TARGET_LDFLAGS += -L$(STAGING_DIR)/usr/lib
# TARGET_CFLAGS += -I$(STAGING_DIR)/usr/include
# $(warning print....................... TARGET_CFLAGS: $(TARGET_CFLAGS))


define Target/Description
	Build firmware images for the Sophgo U-based boards
endef

$(eval $(call BuildTarget))


#todo 
#1,uboot待测试
