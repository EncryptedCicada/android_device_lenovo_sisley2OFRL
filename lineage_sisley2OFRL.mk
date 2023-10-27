#
# Copyright (C) 2016 The OmniROM Project
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#      http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.
#
TARGET_BOOTANIMATION_SIZE := 1080x720

# Inherit from AOSP 64-bit support
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)

# Inherit from AOSP product configuration
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# Inherit Lineage's custom product configuration
$(call inherit-product, vendor/cm/config/common.mk)

# Inherit some common Lineage stuff.
$(call inherit-product, vendor/cm/config/common_full_phone.mk)

# Removed to adapt to Lineage
# # Pull in GSM-specific stuff such as APNs
# $(call inherit-product, vendor/omni/config/gsm.mk)

# Call device specific makefile
$(call inherit-product, device/lenovo/sisley2OFRL/device.mk)

# Discard inherited values and use our own instead.
PRODUCT_NAME := lineage_sisley2OFRL
PRODUCT_DEVICE := S1a40
PRODUCT_BRAND := Lenovo
PRODUCT_MODEL := Lenovo S1a40
PRODUCT_MANUFACTURER := Lenovo
PRODUCT_RESTRICT_VENDOR_FILES := false

# Boot animation
TARGET_SCREEN_HEIGHT      := 1920
TARGET_SCREEN_WIDTH       := 1080
TARGET_BOOTANIMATION_NAME := 1080
