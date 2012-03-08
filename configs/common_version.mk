# Version information used on all builds
PRODUCT_BUILD_PROP_OVERRIDES += BUILD_VERSION_TAGS=release-keys USER=android-build BUILD_UTC_DATE=$(shell date +"%s")

PRODUCT_PROPERTY_OVERRIDES += \
    ro.modversion=$(TARGET_PRODUCT)_$(shell date +"%Y%m%d")
