#
# Copyright (C) 2009 OpenWrt.org
#

SUBTARGET:=sg2000
BOARDNAME:=sg2000 based boards
DTSDIR:=sg2000

DEVICE_PACKAGES := u-boot-milkvduos


define Target/Description
	Build firmware images for sophgo sg2000 based boards.
endef

