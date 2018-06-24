GO_EASY_ON_ME=1
export ARCHS = armv7 armv7s arm64
export TARGET=iphone:clang:9.3

include $(THEOS)/makefiles/common.mk

TWEAK_NAME = HomeGesture
HomeGesture_FILES = Tweak.xm
HomeGesture_FRAMEWORKS = UIKit CoreGraphics Foundation

include $(THEOS_MAKE_PATH)/tweak.mk

after-install::
	install.exec "killall -9 SpringBoard"
