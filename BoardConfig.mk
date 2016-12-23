include device/lge/msm7x27a-common/BoardConfigCommon.mk

LGE_PROJECT := l

# inherit from the proprietary version
-include vendor/lge/e610/BoardConfigVendor.mk

TARGET_BOOTLOADER_BOARD_NAME := e610
TARGET_ARCH := arm

BOARD_KERNEL_CMDLINE := androidboot.hardware=m4 lge.signed_image=false

TARGET_PREBUILT_KERNEL := device/lge/e610/kernel

TARGET_KERNEL_SOURCE := kernel/lge/msm7x27a-kernel

TARGET_KERNEL_CONFIG := cyanogenmod_m4_nonfc_defconfig

TARGET_RECOVERY_FSTAB := device/lge/e610/fstab.m4

## We need this for the flipped screen
BOARD_CUSTOM_GRAPHICS := ../../../device/lge/e610/recovery/graphics.c

#bluetooth
BOARD_BLUETOOTH_BDROID_BUILDCFG_INCLUDE_DIR := device/lge/e610/bluetooth

COMMON_GLOBAL_CFLAGS += -DQCOM_HARDWARE
TARGET_USE_QCOM_BIONIC_OPTIMIZATION := true
USE_SET_METADATA := false
SKIP_SET_METADATA := true
DISABLE_OTA := true


PRODUCT_LOCALES := en_US en_IN fr_FR it_IT es_ES et_EE de_DE nl_NL cs_CZ \
    pl_PL ja_JP zh_TW zh_CN zh_HK ru_RU ko_KR nb_NO es_US da_DK el_GR tr_TR \
    pt_PT pt_BR rm_CH sv_SE bg_BG ca_ES en_GB fi_FI hr_HR hu_HU in_ID iw_IL \
    lt_LT lv_LV ro_RO sk_SK sl_SI sr_RS uk_UA vi_VN tl_PH ar_EG fa_IR sw_TZ \
    ms_MY af_ZA zu_ZA en_XA ar_XB fr_CA mn_MN hy_AM az_AZ ka_GE

# Partitions
# Added an extra 0 to RECOVERYIMAGE so error
# in building the ROM dissapears
# DONT FLASH THIS RECOVERY... i warned ya
#BOARD_RECOVERYIMAGE_PARTITION_SIZE := 83886080
BOARD_BOOTIMAGE_PARTITION_SIZE := 8388608
BOARD_SYSTEMIMAGE_PARTITION_SIZE := 589299712
BOARD_USERDATAIMAGE_PARTITION_SIZE := 2920577761

# Recovery
DEVICE_RESOLUTION := 320x480
RECOVERY_GRAPHICS_USE_LINELENGTH := true
RECOVERY_FSTAB_VERSION := 2
TARGET_RECOVERY_PIXEL_FORMAT := "RGB_565"
TARGET_RECOVERY_QCOM_RTC_FIX := true
BOARD_USES_MMCUTILS := true
BOARD_HAS_NO_MISC_PARTITION := true
BOARD_HAS_NO_SELECT_BUTTON := true

## Webkit
PRODUCT_PACKAGES += \
    libwebcore	

# (classic webview provider)
PRODUCT_PROPERTY_OVERRIDES += \
    persist.webview.provider=classic

ENABLE_WEBGL := true
PRODUCT_PREBUILT_WEBVIEWCHROMIUM := yes
TARGET_ARCH_LOWMEM := true
JS_ENGINE	:= v8
HTTP	:= chrome
WITH_JIT	:= true
ENABLE_JSC_JIT	:= true
TARGET_WEBKIT_USE_MORE_MEMORY	:= true
TARGET_FORCE_CPU_UPLOAD	:= true
TARGET_USES_JELLYBEAN_BASEBAND := true
TARGET_EXTERNAL_APPS = sdcard1

# trebuchet
PRODUCT_PACKAGES += \
    Trebuchet

# Unified Device
TARGET_UNIFIED_DEVICE := true
TARGET_OTA_ASSERT_DEVICE := E610,e610,E612,e612,E617,e617,m4
