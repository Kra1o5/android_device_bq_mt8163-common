COMMON_PATH := device/bq/mt8163-common

# Platform
TARGET_BOOTLOADER_BOARD_NAME := MT8163
TARGET_BOARD_PLATFORM := mt8163
TARGET_NO_BOOTLOADER := true
TARGET_IS_64_BIT := true

# ARCH
TARGET_ARCH := arm64
TARGET_ARCH_VARIANT := armv8-a
TARGET_CPU_ABI := arm64-v8a
TARGET_CPU_ABI2 :=
TARGET_CPU_VARIANT := cortex-a53

TARGET_2ND_ARCH := arm
TARGET_2ND_ARCH_VARIANT := armv7-a-neon
TARGET_2ND_CPU_ABI := armeabi-v7a
TARGET_2ND_CPU_ABI2 := armeabi
TARGET_2ND_CPU_VARIANT := cortex-a53

# Kernel
TARGET_KERNEL_ARCH := arm64
TARGET_KERNEL_HEADER_ARCH := arm64
TARGET_KERNEL_CROSS_COMPILE_PREFIX := $(shell pwd)/prebuilts/gcc/linux-x86/aarch64/aarch64-linux-android-4.9/bin/aarch64-linux-android-
BOARD_KERNEL_IMAGE_NAME := Image.gz-dtb
TARGET_KERNEL_SOURCE := kernel/bq/mt8163
TARGET_USES_64_BIT_BINDER := true

# Boot Image Args
BOARD_MKBOOTIMG_ARGS := --kernel_offset 0x00008000 --ramdisk_offset 0x03f88000 --second_offset 0x00e88000 --tags_offset 0x0df88000 --base 0x40078000 --cmdline "bootopt=64S3,32N2,64N2 androidboot.selinux=permissive"

# MediaTek Boot Image Headers
BOARD_CUSTOM_BOOTIMG := true
BOARD_CUSTOM_BOOTIMG_MK := $(COMMON_PATH)/mkbootimg.mk

# Hardware
BOARD_USES_MTK_HARDWARE := true

# Display
BOARD_EGL_CFG := $(COMMON_PATH)/configs/egl.cfg
TARGET_USES_HWC2 := true
USE_OPENGL_RENDERER := true
TARGET_USES_C2D_COMPOSITION := true
TARGET_USES_OVERLAY := true
NUM_FRAMEBUFFER_SURFACE_BUFFERS := 3
TARGET_RUNNING_WITHOUT_SYNC_FRAMEWORK := true
TARGET_FORCE_HWC_FOR_VIRTUAL_DISPLAYS := true
MAX_VIRTUAL_DISPLAY_DIMENSION := 1
MAX_EGL_CACHE_KEY_SIZE := 12*1024
MAX_EGL_CACHE_SIZE := 1024*1024

# Audio
USE_XML_AUDIO_POLICY_CONF := 1
BOARD_USES_MTK_AUDIO := true

# Charger
BOARD_CHARGER_ENABLE_SUSPEND := true
BACKLIGHT_PATH := /sys/class/leds/lcd-backlight/brightness

# DT2W
TARGET_TAP_TO_WAKE_NODE := "/proc/gesture_open"

# Bluetooth
MTK_BT_SUPPORT := yes
BOARD_HAVE_BLUETOOTH := true
BOARD_HAVE_BLUETOOTH_MTK := true
BOARD_BLUETOOTH_DOES_NOT_USE_RFKILL := true
BOARD_BLUETOOTH_BDROID_HCILP_INCLUDED := 0

# Lights
TARGET_PROVIDES_LIBLIGHT := true

# Camera
USE_CAMERA_STUB := true

# Enable Minikin text layout engine (will be the default soon)
USE_MINIKIN := true
MALLOC_SVELTE := true

# Include
TARGET_SPECIFIC_HEADER_PATH := $(COMMON_PATH)/include

# Wi-Fi
BOARD_WLAN_DEVICE := MediaTek
WPA_SUPPLICANT_VERSION := VER_0_8_X
BOARD_HOSTAPD_DRIVER := NL80211
BOARD_HOSTAPD_PRIVATE_LIB := lib_driver_cmd_mt66xx
BOARD_WPA_SUPPLICANT_DRIVER := NL80211
BOARD_WPA_SUPPLICANT_PRIVATE_LIB := lib_driver_cmd_mt66xx
WIFI_DRIVER_FW_PATH_PARAM := /dev/wmtWifi
WIFI_DRIVER_FW_PATH_AP := AP
WIFI_DRIVER_FW_PATH_STA := STA
WIFI_DRIVER_FW_PATH_P2P := P2P
WIFI_DRIVER_STATE_CTRL_PARAM := /dev/wmtWifi
WIFI_DRIVER_STATE_ON := 1
WIFI_DRIVER_STATE_OFF := 0

# Sepolicy
BOARD_SEPOLICY_DIRS += $(COMMON_PATH)/sepolicy
SELINUX_IGNORE_NEVERALLOWS := true

# Gatekeeper
BOARD_USE_SOFT_GATEKEEPER := true

# LineageOS Hardware
BOARD_USES_LINEAGE_HARDWARE := true
BOARD_HARDWARE_CLASS := $(COMMON_PATH)/lineagehw

# GPS
BOARD_GPS_LIBRARIES := true
BOARD_CONNECTIVITY_VENDOR := MediaTek
BOARD_CONNECTIVITY_MODULE := conn_soc

# HIDL Manifest
DEVICE_MANIFEST_FILE := $(COMMON_PATH)/manifest.xml
DEVICE_MATRIX_FILE	:= $(COMMON_PATH)/compatibility_matrix.xml