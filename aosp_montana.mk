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
PRODUCT_BRAND := motorola
PRODUCT_NAME := aosp_montana
PRODUCT_DEVICE := montana
PRODUCT_MODEL := Moto G (5S)

PRODUCT_GMS_CLIENTID_BASE := android-motorola

# Match stock build fingerprint
PRODUCT_OVERRIDE_FINGERPRINT := motorola/montana/montana:8.1.0/OPPS28.65-37-7-11/7f8a6:user/release-keys
