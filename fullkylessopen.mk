#

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)
$(call inherit-product, device/samsung/kylessopen/carbon_kylessopen.mk)

## Device identifier. This must come after all inclusions
PRODUCT_DEVICE := kylessopen
PRODUCT_NAME := full_S7560
PRODUCT_BRAND := Samsung
PRODUCT_MODEL := S7560
PRODUCT_MANUFACTURER := SAMSUNG
