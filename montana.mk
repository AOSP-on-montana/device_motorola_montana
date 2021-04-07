#
# Copyright (C) 2019 The LineageOS Project
#
# SPDX-License-Identifier: Apache-2.0
#

# Inherit AOSP product configuration
$(call inherit-product, device/motorola/montana/aosp_montana.mk)

# Remove AOSP prefix from product name
PRODUCT_NAME := montana
