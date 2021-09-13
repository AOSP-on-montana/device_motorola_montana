#
# Copyright (C) 2019 The LineageOS Project
#
# SPDX-License-Identifier: Apache-2.0
#

$(call inherit-product, device/motorola/montana/device.mk)

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/aosp_base_telephony.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/product_launched_with_n_mr1.mk)

# Device identifier. This must come after all inclusions.
PRODUCT_MANUFACTURER := motorola
PRODUCT_BRAND := Android
PRODUCT_NAME := aosp_montana
PRODUCT_DEVICE := montana
PRODUCT_MODEL := AOSP on montana

PRODUCT_GMS_CLIENTID_BASE := android-motorola
