$(call inherit-product, $(SRC_TARGET_DIR)/product/languages_full.mk)

$(call inherit-product, vendor/carbon/config/common.mk)

# The gps config appropriate for this device
$(call inherit-product, device/common/gps/gps_us_supl.mk)

$(call inherit-product-if-exists, vendor/samsung/kylessopen/kylessopen-vendor.mk)

DEVICE_PACKAGE_OVERLAYS += device/samsung/kylessopen/overlay

PRODUCT_AAPT_CONFIG := normal hdpi
PRODUCT_AAPT_PREF_CONFIG := hdpi

PRODUCT_PACKAGES += \
    libnetcmdiface \
    libloc_api-rpc \
    libqservice

# Audio
PRODUCT_PACKAGES += \
    audio.a2dp.default \
    audio_policy.msm7x27a \
    audio_policy.conf \
    libaudioutils \
    audio.primary.msm7x27a

# Bluetooth
PRODUCT_PACKAGES += \
    bluetooth-headers \
    hciconfig \
    hciattach \
    btmon \
    btproxy \
    bluetoothd-snoop \
    btmgmt \
    hcitool \
    l2ping \
    libsbc \
    avinfo \
    bccmd \
    haltest \
    libdbus \
    audio.sco.default \
    bluetoothd

# Camera
PRODUCT_PACKAGES += \
   camera.msm7x27a

# Device
PRODUCT_PACKAGES += \
    DeviceParts \
    make_ext4fs \
    setup_fs \
    com.android.future.usb.accessory

# GPS
PRODUCT_PACKAGES += \
    gps.msm7x27a
	

# Graphics
PRODUCT_PACKAGES += \
    copybit.msm7x27a \
    gralloc.msm7x27a \
    hwcomposer.msm7x27a \
    libtilerenderer
    
# Torch
PRODUCT_PACKAGES += OmniTorch

#Apollo
PRODUCT_PACKAGES += Apollo
    
# Lights
PRODUCT_PACKAGES += \
    lights.msm7x27a

# Live Wallpapers
PRODUCT_PACKAGES += \
    LiveWallpapersPicker \
    librs_jni

# Power HAL
PRODUCT_PACKAGES += \
    power.msm7x27a

# Video
PRODUCT_PACKAGES += \
    libmm-omxcore \
    libOmxCore \
    libstagefrighthw

# Ramdisk
PRODUCT_COPY_FILES += \
    $(call find-copy-subdir-files,*,device/samsung/kylessopen/ramdisk,root)

# Prebuilt
PRODUCT_COPY_FILES += \
    $(call find-copy-subdir-files,*,device/samsung/kylessopen/prebuilt/system,system)
    

    
#Optimization for low-memory devices
PRODUCT_PROPERTY_OVERRIDES += \
    ro.config.low_ram=true 

# Hardware features available on this device
PRODUCT_COPY_FILES += \
    frameworks/native/data/etc/android.hardware.camera.autofocus.xml:system/etc/permissions/android.hardware.camera.autofocus.xml \
    frameworks/native/data/etc/android.hardware.location.gps.xml:system/etc/permissions/android.hardware.location.gps.xml \
    frameworks/native/data/etc/android.hardware.sensor.accelerometer.xml:system/etc/permissions/android.hardware.sensor.accelerometer.xml \
    frameworks/native/data/etc/android.hardware.sensor.compass.xml:system/etc/permissions/android.hardware.sensor.compass.xml \
    frameworks/native/data/etc/android.hardware.sensor.proximity.xml:system/etc/permissions/android.hardware.sensor.proximity.xml \
    frameworks/native/data/etc/android.hardware.telephony.gsm.xml:system/etc/permissions/android.hardware.telephony.gsm.xml \
    frameworks/native/data/etc/android.hardware.touchscreen.multitouch.jazzhand.xml:system/etc/permissions/android.hardware.touchscreen.multitouch.jazzhand.xml \
    frameworks/native/data/etc/android.hardware.usb.accessory.xml:system/etc/permissions/android.hardware.usb.accessory.xml \
    frameworks/native/data/etc/android.hardware.usb.host.xml:system/etc/permissions/android.hardware.usb.host.xml \
    frameworks/native/data/etc/android.hardware.wifi.xml:system/etc/permissions/android.hardware.wifi.xml \
    frameworks/native/data/etc/android.software.sip.voip.xml:system/etc/permissions/android.software.sip.voip.xml \
    frameworks/native/data/etc/handheld_core_hardware.xml:system/etc/permissions/handheld_core_hardware.xml

# Recovery
PRODUCT_COPY_FILES += \
$(call find-copy-subdir-files,*,device/samsung/kylessopen/prebuilt/recovery,recovery/root)

    
# Enable repeatable keys in CWM
PRODUCT_PROPERTY_OVERRIDES += \
    ro.cwm.enable_key_repeat=true

$(call inherit-product, frameworks/native/build/phone-hdpi-512-dalvik-heap.mk)
$(call inherit-product, build/target/product/full.mk)

