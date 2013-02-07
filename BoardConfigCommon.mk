#COMMON_GLOBAL_CFLAGS += -DREVERSE_FFC_MIRROR_LOGIC -DMISSING_EGL_EXTERNAL_IMAGE -DMISSING_EGL_PIXEL_FORMAT_YV12 -DMISSING_GRALLOC_BUFFERS -DEGL_ALWAYS_ASYNC

# inherit from the proprietary version
-include vendor/lge/star-common/BoardConfigVendor.mk

TARGET_NO_BOOTLOADER := true
TARGET_BOARD_PLATFORM := tegra
TARGET_CPU_ABI := armeabi-v7a
TARGET_CPU_ABI2 := armeabi
TARGET_CPU_SMP := true
TARGET_ARCH_VARIANT := armv7-a
TARGET_ARCH_VARIANT_CPU := cortex-a9
TARGET_ARCH_VARIANT_FPU := vfpv3-d16
ARCH_ARM_HAVE_TLS_REGISTER := true
ARCH_ARM_USE_NON_NEON_MEMCPY := true

TARGET_thumb_CFLAGS := -mthumb \
	-Os \
	-fomit-frame-pointer \
	-fstrict-aliasing \
	-Werror=strict-aliasing \
	-finline-limit=64 \
	-march=armv7-a \
	-mtune=cortex-a9 \
	-mcpu=cortex-a9 \
	-ftree-loop-linear   \
	-floop-interchange   \
	-floop-strip-mine    \
	-floop-block         \
	-fgraphite-identity  \
	-floop-parallelize-all \
	-ftree-loop-distribution \
	-ftree-loop-distribute-patterns \
	-fivopts \
	-ftree-parallelize-loops=2

TARGET_arm_CFLAGS := -O3 \
	-fomit-frame-pointer \
	-fstrict-aliasing \
	-funswitch-loops \
	-fmodulo-sched \
	-fmodulo-sched-allow-regmoves \
	-march=armv7-a       \
	-mtune=cortex-a9     \
	-mcpu=cortex-a9      \
	-ftree-loop-linear   \
	-floop-interchange   \
	-floop-strip-mine    \
	-floop-block         \
	-fgraphite-identity  \
	-floop-parallelize-all \
	-ftree-loop-distribution \
	-ftree-loop-distribute-patterns \
	-fivopts \
	-ftree-parallelize-loops=2

KOWALSKI_COMMON_CFLAGS := -mfloat-abi=softfp \
	-mfpu=vfpv3-d16 \
	-march=armv7-a \
	-mcpu=cortex-a9 \
	-mtune=cortex-a9 \
	-Wno-error=strict-aliasing \
	-Wstrict-aliasing=2

TARGET_GLOBAL_CFLAGS += $(COMMON_GLOBAL_CFLAGS) \
	-O3 \
	$(KOWALSKI_COMMON_CFLAGS)

TARGET_GLOBAL_CPPFLAGS += $(COMMON_GLOBAL_CPPFLAGS) \
	-Os \
	-fvisibility-inlines-hidden \
	$(KOWALSKI_COMMON_CFLAGS)

TARGET_SPECIFIC_HEADER_PATH := device/lge/star-common/include

#TARGET_USERIMAGES_USE_EXT4 := true

BOARD_HAS_NO_SELECT_BUTTON := true

#BOARD_USES_CAMERA_LEGACY := true

BOARD_HAVE_BLUETOOTH := true
BOARD_HAVE_BLUETOOTH_BCM := true

TARGET_OVERLAY_ALWAYS_DETERMINES_FORMAT := true

TARGET_DONT_SET_AUDIO_AAC_FORMAT := true

BOARD_HAS_NO_MISC_PARTITION := true

BOARD_WLAN_DEVICE := bcm4329
WIFI_DRIVER_FW_PATH_STA         := "/system/etc/wl/rtecdc.bin"
WIFI_DRIVER_FW_PATH_AP          := "/system/etc/wl/rtecdc-apsta.bin"
WIFI_DRIVER_MODULE_NAME         := "wireless"
WIFI_DRIVER_MODULE_PATH         := "/system/lib/modules/wireless.ko"
WIFI_DRIVER_MODULE_ARG          := "firmware_path=/system/etc/wl/rtecdc.bin nvram_path=/etc/wl/nvram.txt config_path=/data/misc/wifi/config"
WPA_SUPPLICANT_VERSION          := VER_0_8_X
BOARD_HOSTAPD_PRIVATE_LIB := lib_driver_cmd_wext
BOARD_WPA_SUPPLICANT_PRIVATE_LIB := lib_driver_cmd_wext
WIFI_DRIVER_HAS_LGE_SOFTAP      := true
BOARD_WPA_SUPPLICANT_DRIVER := WEXT
#BOARD_WEXT_NO_COMBO_SCAN       := true

BOARD_HAS_VIBRATOR_IMPLEMENTATION := ../../device/lge/star-common/vibrator.c

BOARD_VOLD_EMMC_SHARES_DEV_MAJOR := true

TARGET_RECOVERY_PRE_COMMAND := "/system/bin/setup-recovery"

#BOARD_USES_LGE_HDMI_ROTATION := true

BOARD_MOBILEDATA_INTERFACE_NAME := "vsnet0"

BOARD_USE_SKIA_LCDTEXT := true
USE_OPENGL_RENDERER := true
BOARD_NO_ALLOW_DEQUEUE_CURRENT_BUFFER := true
TARGET_NEEDS_BLUETOOTH_INIT_DELAY := true
#MAX_EGL_CACHE_ENTRY_SIZE := 0
#MAX_EGL_CACHE_SIZE := 10

COMMON_GLOBAL_CFLAGS += -DICS_AUDIO_BLOB -DICS_CAMERA_BLOB

BOARD_SYSFS_LIGHT_SENSOR := "/sys/devices/platform/i2c-gpio.5/i2c-5/5-0060/alc"

#TARGET_KERNEL_SOURCE := kernel/lge/star

TARGET_USE_CUSTOM_LUN_FILE_PATH := "/sys/devices/platform/fsl-tegra-udc/gadget/lun%d/file"
