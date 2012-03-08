$(call inherit-product, vendor/clusty/configs/common.mk)

PRODUCT_COPY_FILES += \
    vendor/clusty/prebuilt/common/app/ApexLauncher.apk:system/app/ApexLauncher.apk \
    vendor/clusty/prebuilt/common/app/ClustyBeam.apk:system/app/ClustyBeam.apk


