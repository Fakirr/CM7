#TARGET_NO_BOOTLOADER := true
#TARGET_NO_RADIOIMAGE := true

TARGET_BOOTLOADER_BOARD_NAME := cocktail

TARGET_BOARD_PLATFORM := msm7x30
TARGET_BOARD_PLATFORM_GPU := qcom-adreno200
TARGET_USES_2G_VM_SPLIT := true

TARGET_CPU_ABI := armeabi-v7a
TARGET_CPU_ABI2 := armeabi
TARGET_ARCH_VARIANT := armv7-a-neon
ARCH_ARM_HAVE_TLS_REGISTER := true

TARGET_SPECIFIC_HEADER_PATH := device/alcatel/cocktail/include

# Kernel/bootimg
BOARD_KERNEL_CMDLINE := console=ttyDCC0 androidboot.hardware=cocktail
BOARD_KERNEL_BASE := 0x00200000
BOARD_KERNEL_PAGESIZE := 4096
BOARD_FORCE_RAMDISK_ADDRESS := 0x01300000
BOARD_FLASH_BLOCK_SIZE := 1

#
# Partition sizes
#
# XXX - this has an extra zero appended to be able to build recovery
# We can only fit the kernel if it's stripped down and LZMA-compressed..
BOARD_VOLD_MAX_PARTITIONS := 8
TARGET_USERIMAGES_USE_EXT4 := true
BOARD_BOOTIMAGE_PARTITION_SIZE := 5242880
BOARD_RECOVERYIMAGE_PARTITION_SIZE := 5242880
BOARD_SYSTEMIMAGE_PARTITION_SIZE := 262144000
BOARD_USERDATAIMAGE_PARTITION_SIZE := 1064304640
BOARD_FLASH_BLOCK_SIZE := 4096

# Recovery
BOARD_HAS_NO_SELECT_BUTTON := true
BOARD_RECOVERY_NO_FLASH := true

TARGET_PREBUILT_KERNEL := device/alcatel/cocktail/prebuilt/kernel
#TARGET_RECOVERY_INITRC := device/alcatel/cocktail/init.recovery.rc

# QCOM Display
#BOARD_ADRENO_DECIDE_TEXTURE_TARGET := true
BOARD_EGL_CFG := device/alcatel/cocktail/egl.cfg
#BOARD_USES_ADRENO_200 := true
#TARGET_GRALLOC_USES_ASHMEM := true
HDMI_DUAL_DISPLAY := true
TARGET_QCOM_HDMI_OUT := true
TARGET_NO_HW_VSYNC := true
TARGET_USES_C2D_COMPOSITION := true
USE_OPENGL_RENDERER := true

# FM Radio
BOARD_HAVE_FM_RADIO := true
BOARD_GLOBAL_CFLAGS += -DHAVE_FM_RADIO

# Boot animation speedup
TARGET_BOOTANIMATION_PRELOAD := true
TARGET_BOOTANIMATION_TEXTURE_CACHE := true

# Webkit
ENABLE_WEBGL := true
TARGET_FORCE_CPU_UPLOAD := true

# QCOM
COMMON_GLOBAL_CFLAGS += -DQCOM_HARDWARE
TARGET_LIBAGL_USE_GRALLOC_COPYBITS := true
#BOARD_USE_QCOM_PMEM := true
BOARD_USES_QCOM_GPS := true
BOARD_USES_QCOM_HARDWARE := true
BOARD_USES_QCOM_LIBRPC := true
BOARD_USES_QCOM_LIBS := true
BOARD_VENDOR_QCOM_AMSS_VERSION := 6225
BOARD_VENDOR_QCOM_GPS_LOC_API_HARDWARE := cocktail
BOARD_VENDOR_QCOM_GPS_LOC_API_AMSS_VERSION := 50000
#TARGET_USES_PMEM := true

#BOARD_NEEDS_MEMORYHEAPPMEM := true

# radio interface
#BOARD_MOBILEDATA_INTERFACE_NAME = "rmnet0"

# Wifi related defines
BOARD_WPA_SUPPLICANT_DRIVER := WEXT
WPA_SUPPLICANT_VERSION      := VER_0_6_X
BOARD_WLAN_DEVICE           := bcm4330
WIFI_DRIVER_MODULE_PATH     := "/system/lib/modules/bcm4330.ko"
WIFI_DRIVER_FW_STA_PATH     := "/system/etc/firmware/fw_bcmdhd.bin"
WIFI_DRIVER_FW_AP_PATH      := "/system/etc/firmware/fw_bcmdhd_apsta.bin"
WIFI_DRIVER_MODULE_ARG      := "firmware_path=/system/etc/firmware/b2.bin nvram_path=/proc/calibration"
WIFI_DRIVER_MODULE_NAME     := "bcm4330"

#WPA_SUPPLICANT_VERSION      := VER_0_8_X
#BOARD_WPA_SUPPLICANT_DRIVER := NL80211
#BOARD_WPA_SUPPLICANT_PRIVATE_LIB := lib_driver_cmd_bcmdhd
#BOARD_HOSTAPD_DRIVER        := NL80211
#BOARD_HOSTAPD_PRIVATE_LIB   := lib_driver_cmd_bcmdhd
#BOARD_WLAN_DEVICE           := bcmdhd
#BOARD_WLAN_DEVICE_REV       := bcm4330_b2
#WIFI_DRIVER_FW_PATH_PARAM   := "/sys/module/bcm4330/parameters/firmware_path"
#WIFI_DRIVER_MODULE_NAME     := "bcm4330"
#WIFI_DRIVER_MODULE_PATH     := "/system/lib/modules/bcm4330.ko"
#WIFI_DRIVER_MODULE_ARG      := "nvram_path=/system/etc/firmware/nvram.txt"
#WIFI_DRIVER_FW_PATH_STA     := "/system/etc/firmware/fw_bcmdhd.bin"
#WIFI_DRIVER_FW_PATH_AP      := "/system/etc/firmware/fw_bcmdhd_apsta.bin"
#WIFI_DRIVER_FW_PATH_P2P     := "/system/etc/firmware/fw_bcmdhd_p2p.bin"

# Bluetooth
BOARD_HAVE_BLUETOOTH := true
BOARD_HAVE_BLUETOOTH_BCM := true
