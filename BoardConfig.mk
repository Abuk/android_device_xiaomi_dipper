#
# Copyright (C) 2018 The LineageOS Project
#
# SPDX-License-Identifier: Apache-2.0
#

# Inherit from sdm845-common
-include device/xiaomi/sdm845-common/BoardConfigCommon.mk

DEVICE_PATH := device/xiaomi/dipper

# Assert
TARGET_OTA_ASSERT_DEVICE := dipper

# Kernel
TARGET_KERNEL_CONFIG := dipper_defconfig

TARGET_SYSTEM_PROP := $(DEVICE_PATH)/system.prop

# Fix RIL
TARGET_PROVIDES_QTI_TELEPHONY_JAR := true

# Inherit from the proprietary version
-include vendor/xiaomi/dipper/BoardConfigVendor.mk

# Sepolicy
BOARD_PLAT_PRIVATE_SEPOLICY_DIR += $(DEVICE_PATH)/sepolicy/private
