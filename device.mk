#
# Copyright (C) 2014 The CyanogenMod Project
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

# This file includes all definitions that apply to ALL d851 devices, and
# are also specific to d851 devices
#
# Everything in this directory will become public

DEVICE_PACKAGE_OVERLAYS := \
    device/lge/d851/overlay

# Ramdisk
PRODUCT_PACKAGES += \
    fstab.g3 \
    init.g3.rc \
    init.galbi.class_core.sh \
    init.galbi.class_main.sh \
    init.galbi.crash.sh \
    init.galbi.early_boot.sh \
    init.galbi.sh \
    init.galbi.syspart_fixup.sh \
    init.galbi.usb.sh \
    init.galbi-sensor.sh \
    init.lge.cmm.usb.sh \
    init.lge.usb.rc \
    init.lge.usb.sh \
    init.trace.rc \
    set_emmc_size.sh \
    init.logcat.sh \
    ueventd.g3.rc

# IDC
PRODUCT_COPY_FILES += \
    device/lge/d851/idc/keypad-8974.idc:system/usr/idc/keypad-8974.idc \
    device/lge/d851/idc/qwerty.idc:system/usr/idc/qwerty.idc \
    device/lge/d851/idc/qwerty2.idc:system/usr/idc/qwerty2.idc \
    device/lge/d851/idc/synaptics-ts.idc:system/usr/idc/synaptics-ts.idc \
    device/lge/d851/idc/touch_dev.idc:system/usr/idc/touch_dev.idc

# keychars
PRODUCT_COPY_FILES += \
    device/lge/d851/keychars/Generic.kcm:system/usr/keychars/Generic.kcm \
    device/lge/d851/keychars/qwerty.kcm:system/usr/keychars/qwerty.kcm \
    device/lge/d851/keychars/qwerty2.kcm:system/usr/keychars/qwerty2.kcm \
    device/lge/d851/keychars/Virtual.kcm:system/usr/keychars/Virtual.kcm

# keylayout
PRODUCT_COPY_FILES += \
    device/lge/d851/keylayout/atmel_mxt_ts.kl:system/usr/keylayout/atmel_mxt_ts.kl \
    device/lge/d851/keylayout/Button_Jack.kl:system/usr/keylayout/Button_Jack.kl \
    device/lge/d851/keylayout/gpio-keys.kl:system/usr/keylayout/gpio-keys.kl \
    device/lge/d851/keylayout/lgps11-keypad.kl:system/usr/keylayout/lgps11-keypad.kl

# Audio
PRODUCT_COPY_FILES += \
    device/lge/d851/configs/audio_effects.conf:system/vendor/etc/audio_effects.conf \
    device/lge/d851/configs/audio_policy.conf:system/etc/audio_policy.conf \
    device/lge/d851/configs/mixer_paths.xml:system/etc/mixer_paths.xml

# Media
PRODUCT_COPY_FILES += \
    device/lge/d851/configs/media_codecs.xml:system/etc/media_codecs.xml \
    device/lge/d851/configs/media_profiles.xml:system/etc/media_profiles.xml

# Wi-Fi
PRODUCT_COPY_FILES += \
    device/lge/d851/configs/bcmdhd.cal:system/etc/wifi/bcmdhd.cal

# GPS
PRODUCT_COPY_FILES += \
    device/lge/d851/configs/sec_config:system/etc/sec_config \
    device/lge/d851/configs/gps.conf:system/etc/gps.conf

# Thermal
PRODUCT_COPY_FILES += \
    device/lge/d851/configs/thermal-engine-8974.conf:system/etc/thermal-engine.conf

# These are the hardware-specific features
PRODUCT_COPY_FILES += \
    frameworks/native/data/etc/handheld_core_hardware.xml:system/etc/permissions/handheld_core_hardware.xml \
    frameworks/native/data/etc/android.hardware.camera.flash-autofocus.xml:system/etc/permissions/android.hardware.camera.flash-autofocus.xml \
    frameworks/native/data/etc/android.hardware.camera.front.xml:system/etc/permissions/android.hardware.camera.front.xml \
    frameworks/native/data/etc/android.hardware.location.gps.xml:system/etc/permissions/android.hardware.location.gps.xml \
    frameworks/native/data/etc/android.hardware.wifi.xml:system/etc/permissions/android.hardware.wifi.xml \
    frameworks/native/data/etc/android.hardware.wifi.direct.xml:system/etc/permissions/android.hardware.wifi.direct.xml \
    frameworks/native/data/etc/android.hardware.sensor.proximity.xml:system/etc/permissions/android.hardware.sensor.proximity.xml \
    frameworks/native/data/etc/android.hardware.sensor.light.xml:system/etc/permissions/android.hardware.sensor.light.xml \
    frameworks/native/data/etc/android.hardware.sensor.gyroscope.xml:system/etc/permissions/android.hardware.sensor.gyroscope.xml \
    frameworks/native/data/etc/android.hardware.sensor.barometer.xml:system/etc/permissions/android.hardware.sensor.barometer.xml \
    frameworks/native/data/etc/android.hardware.sensor.stepcounter.xml:system/etc/permissions/android.hardware.sensor.stepcounter.xml \
    frameworks/native/data/etc/android.hardware.sensor.stepdetector.xml:system/etc/permissions/android.hardware.sensor.stepdetector.xml \
    frameworks/native/data/etc/android.hardware.touchscreen.multitouch.jazzhand.xml:system/etc/permissions/android.hardware.touchscreen.multitouch.jazzhand.xml \
    frameworks/native/data/etc/android.software.sip.voip.xml:system/etc/permissions/android.software.sip.voip.xml \
    frameworks/native/data/etc/android.hardware.usb.accessory.xml:system/etc/permissions/android.hardware.usb.accessory.xml \
    frameworks/native/data/etc/android.hardware.usb.host.xml:system/etc/permissions/android.hardware.usb.host.xml \
    frameworks/native/data/etc/android.hardware.telephony.gsm.xml:system/etc/permissions/android.hardware.telephony.gsm.xml \
    frameworks/native/data/etc/android.hardware.audio.low_latency.xml:system/etc/permissions/android.hardware.audio.low_latency.xml \
    frameworks/native/data/etc/android.hardware.bluetooth_le.xml:system/etc/permissions/android.hardware.bluetooth_le.xml \
    frameworks/native/data/etc/android.hardware.telephony.cdma.xml:system/etc/permissions/android.hardware.telephony.cdma.xml

# NFC access control + feature files + configuration
PRODUCT_COPY_FILES += \
    frameworks/native/data/etc/android.hardware.nfc.xml:system/etc/permissions/android.hardware.nfc.xml \
    frameworks/native/data/etc/android.hardware.nfc.hce.xml:system/etc/permissions/android.hardware.nfc.hce.xml \
    device/lge/d851/configs/libnfc-brcm.conf:system/etc/libnfc-brcm.conf \
    device/lge/d851/configs/libnfc-nxp.conf:system/etc/libnfc-nxp.conf

PRODUCT_TAGS += dalvik.gc.type-precise

# This device is xhdpi.  However the platform doesn't
# currently contain all of the bitmaps at xhdpi density so
# we do this little trick to fall back to the hdpi version
# if the xhdpi doesn't exist.
PRODUCT_AAPT_CONFIG := normal hdpi xhdpi xxhdpi
PRODUCT_AAPT_PREF_CONFIG := xxhdpi

# Live Wallpapers
PRODUCT_PACKAGES += \
    LiveWallpapersPicker \
    librs_jni

PRODUCT_PACKAGES += \
    gralloc.msm8974 \
    libgenlock \
    hwcomposer.msm8974 \
    memtrack.msm8974 \
    libqdutils \
    libqdMetaData

PRODUCT_PACKAGES += \
    libc2dcolorconvert \
    libstagefrighthw \
    libOmxCore \
    libmm-omxcore \
    libOmxVdec \
    libOmxVdecHevc \
    libOmxVenc

PRODUCT_PACKAGES += \
    audio.primary.msm8974 \
    audio.a2dp.default \
    audio.usb.default \
    audio.r_submix.default \
    libaudio-resampler

# Audio effects
PRODUCT_PACKAGES += \
    libqcomvisualizer \
    libqcomvoiceprocessing \
    libqcomvoiceprocessingdescriptors

PRODUCT_PACKAGES += \
    libqomx_core \
    libmmcamera_interface \
    libmmjpeg_interface \
    camera.hammerhead \
    mm-jpeg-interface-test \
    mm-qcamera-app

PRODUCT_PACKAGES += \
    keystore.msm8974

PRODUCT_PACKAGES += \
    power.msm8974

# GPS
PRODUCT_PACKAGES += \
    libloc_adapter \
    libloc_eng \
    libloc_api_v02 \
    libloc_ds_api \
    libloc_core \
    libizat_core \
    libgeofence \
    libgps.utils \
    gps.msm8974 \
    flp.msm8974

# NFC packages
PRODUCT_PACKAGES += \
    nfc_nci.d851 \
    NfcNci \
    Tag

PRODUCT_PACKAGES += \
    libion

PRODUCT_PACKAGES += \
    lights.d851

PRODUCT_PACKAGES += \
    com.android.future.usb.accessory

PRODUCT_PACKAGES += \
    bdAddrLoader

# msm_rng entropy feeder
PRODUCT_PACKAGES += \
    qrngd \
    qrngp

# Filesystem management tools
PRODUCT_PACKAGES += \
    e2fsck

# setup dalvik vm configs.
$(call inherit-product, frameworks/native/build/phone-xhdpi-2048-dalvik-heap.mk)

$(call inherit-product-if-exists, hardware/qcom/msm8x74/msm8x74.mk)
$(call inherit-product-if-exists, vendor/qcom/gpu/msm8x74/msm8x74-gpu-vendor.mk)
$(call inherit-product-if-exists, hardware/broadcom/wlan/bcmdhd/firmware/bcm4339/device-bcm.mk)
