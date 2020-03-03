INSTALL_TARGET_PROCESSES = BAFlights

TARGET = iphone:latest:11.0:13.3
ARCHS = arm64
include $(THEOS)/makefiles/common.mk

TWEAK_NAME = baflightsbypass

baflightsbypass_FILES = Tweak.x
baflightsbypass_CFLAGS = -fobjc-arc

include $(THEOS_MAKE_PATH)/tweak.mk
