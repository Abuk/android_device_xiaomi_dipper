#
# Copyright (C) 2018 The LineageOS Project
#
# SPDX-License-Identifier: Apache-2.0
#

# Inherit from sdm845-common
-include device/xiaomi/sdm845-common/BoardConfigCommon.mk

DEVICE_PATH := device/xiaomi/dipper

#Policy Stuff
SELINUX_IGNORE_NEVERALLOWS := true

# Assert
TARGET_OTA_ASSERT_DEVICE := dipper

# Kernel
TARGET_KERNEL_CONFIG := dipper_defconfig

WITH_DEXPREOPT := false
# DONT_DEXPREOPT_PREBUILTS := true

BOARD_CACHEIMAGE_PARTITION_SIZE := 253920
BOARD_CACHEIMAGE_FILE_SYSTEM_TYPE := ext4

# Inherit from the proprietary version
-include vendor/xiaomi/dipper/BoardConfigVendor.mk
