ARCHS = arm64 arm64e
TARGET := iphone:clang:latest:15.0
export THEOS_PACKAGE_SCHEME=rootless
THEOS_PACKAGE_INSTALL_PREFIX=/var/jb


THEOS_PLATFORM_DEB_COMPRESSION_TYPE=gzip
THEOS_PLATFORM_DEB_COMPRESSION_LEVEL=9

include $(THEOS)/makefiles/common.mk

TWEAK_NAME = XcodeDebugRootless

XcodeDebugRootless_FILES = Tweak.x
XcodeDebugRootless_CFLAGS = -fobjc-arc


include $(THEOS_MAKE_PATH)/tweak.mk
