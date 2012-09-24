# Include GSM stuff
$(call inherit-product, vendor/cm/config/gsm.mk)

# Inherit device configuration for GT540.
$(call inherit-product, device/lge/swift/swift.mk)

# Inherit some common CM stuff.
$(call inherit-product, device/lge/swift/common_mini_phone.mk)

# Include FM-Radio stuff
#$(call inherit-product, vendor/cyanogen/products/bcm_fm_radio.mk)

PRODUCT_NAME := cm_swift
PRODUCT_BRAND := lge
PRODUCT_DEVICE := swift
PRODUCT_MODEL := LG-GT540
PRODUCT_MANUFACTURER := LGE

PRODUCT_BUILD_PROP_OVERRIDES += \
	BUILD_FINGERPRINT="google/lge/swift:4.1.1/ICL53F/235179:user/release-keys" \
	PRIVATE_BUILD_DESC="swift-user 4.1.1 ICL53F 235179 release-keys"

# Release name and versioning
PRODUCT_RELEASE_NAME := JellyBeanSwift
