INSTALL_TARGET_PROCESSES = BAFlights

include $(THEOS)/makefiles/common.mk

TWEAK_NAME = baflightsbypass

baflightsbypass_FILES = Tweak.x
baflightsbypass_CFLAGS = -fobjc-arc

include $(THEOS_MAKE_PATH)/tweak.mk
