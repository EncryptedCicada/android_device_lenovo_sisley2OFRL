# 64-bit support
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)

# Inherit from the common Open Source product configuration
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# Call device specific makefile
$(call inherit-product, device/lenovo/sisley2OFRL/device.mk)

LOCAL_PATH := device/lenovo/sisley2OFRL

# IO Scheduler
PRODUCT_PROPERTY_OVERRIDES += \
    sys.io.scheduler=bfq    
       
PRODUCT_DEVICE := S1a40
PRODUCT_NAME := full_sisley2OFRL
PRODUCT_BRAND := lenovo
PRODUCT_MODEL := lenovo_S1a40
PRODUCT_MANUFACTURER := lenovo

DEVICE_RESOLUTION := 1080x1920

