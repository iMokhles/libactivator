ifeq ($(FW_PLATFORM_LOADED),)
FW_PLATFORM_LOADED := 1

TARGET ?= arm-apple-darwin9
SDKBINPATH ?= /usr/bin
SYSROOT ?= /var/sdk

PREFIX:=$(SDKBINPATH)/$(TARGET)-

CC=$(PREFIX)gcc
CXX=$(PREFIX)g++
STRIP=strip
CODESIGN_ALLOCATE=codesign_allocate

SDKFLAGS := -isysroot $(SYSROOT)
SDK_CFLAGS := $(SDKFLAGS)
SDK_LDFLAGS := $(SDKFLAGS)

DU_EXCLUDE = --exclude

endif
