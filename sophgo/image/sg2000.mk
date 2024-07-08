# SPDX-License-Identifier: GPL-2.0-only
define Device/milk-v-duos
  DEVICE_VENDOR := milkv.io
  DEVICE_MODEL := milkv-duos
  DEVICE_DTS_DIR := ${PWD}/sg2000/dts
  DEVICE_DTS := sg2000_milkv_duos_glibc_arm64_sd
endef
TARGET_DEVICES += milk-v-duos
