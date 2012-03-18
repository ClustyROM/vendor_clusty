# Version information used on all builds
PRODUCT_BUILD_PROP_OVERRIDES += BUILD_VERSION_TAGS=release-keys USER=android-build BUILD_UTC_DATE=$(shell date +"%s")

PRODUCT_PROPERTY_OVERRIDES += \
    ro.modversion=$(TARGET_PRODUCT)_$(shell date +"%Y%m%d")

ifneq ($(TARGET_DEVICE),p999)
    ifeq ($(TARGET_DEVICE),p990)
	    PRODUCT_PROPERTY_OVERRIDES += \
	        ro.cm.version=$(CURRENT_VERSION)
     else
         PRODUCT_PROPERTY_OVERRIDES += \
	        ro.modversion=$(CURRENT_VERSION)
    endif
else
    PRODUCT_PROPERTY_OVERRIDES += \
        ro.cm.version=$(CURRENT_VERSION)
endif
