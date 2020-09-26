#
# Copyright (C) 2019 The LineageOS Project
#
# SPDX-License-Identifier: Apache-2.0
#

# Inherit from msm8937-common
-include device/motorola/msm8937-common/BoardConfigCommon.mk

DEVICE_PATH := device/motorola/montana

# Assert
TARGET_BOARD_INFO_FILE := $(DEVICE_PATH)/board-info.txt

# Display
TARGET_SCREEN_DENSITY := 420

# Kernel
BOARD_VENDOR_KERNEL_MODULES += \
    $(wildcard device/motorola/montana-kernel/*.ko)

# NFC
NXP_CHIP_TYPE := pn554
ODM_MANIFEST_SKUS += n
ODM_MANIFEST_N_FILES := $(DEVICE_PATH)/odm_manifest_n.xml

# Partitions
BOARD_MOTO_DYNAMIC_PARTITIONS_SIZE := 4307550208
BOARD_RECOVERYIMAGE_PARTITION_SIZE := 16879616
BOARD_SUPER_PARTITION_SIZE := 4311744512
BOARD_SUPER_PARTITION_OEM_DEVICE_SIZE := 687865856
BOARD_SUPER_PARTITION_SYSTEM_DEVICE_SIZE := 3623878656
BOARD_USERDATAIMAGE_PARTITION_SIZE := 26403126272

# Security patch level
VENDOR_SECURITY_PATCH := 2019-08-01

# SELinux
BOARD_VENDOR_SEPOLICY_DIRS += $(DEVICE_PATH)/sepolicy/vendor
SYSTEM_EXT_PUBLIC_SEPOLICY_DIRS += $(DEVICE_PATH)/sepolicy/public
SYSTEM_EXT_PRIVATE_SEPOLICY_DIRS += $(DEVICE_PATH)/sepolicy/private

# Inherit from the proprietary version
include vendor/motorola/montana/BoardConfigVendor.mk
