# Inherit some common Carbon stuff.
$(call inherit-product, vendor/carbon/config/common_phone.mk)

# Boot animation
TARGET_SCREEN_WIDTH := 480
TARGET_SCREEN_HEIGHT := 800

	#identifiers
PRODUCT_NAME := carbon_kylessopen
PRODUCT_RELEASE_NAME := GT-S7560

$(call inherit-product, device/samsung/kylessopen/fullkylessopen.mk)
