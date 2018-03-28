
LOCAL_PATH := $(call my-dir)

################################################

include $(CLEAR_VARS)

# Module name should match apk name to be installed.
LOCAL_MODULE := ArgusSysAlarm
LOCAL_SRC_FILES := ArgusSysAlarm.apk
LOCAL_MODULE_CLASS := APPS
LOCAL_MODULE_SUFFIX := $(COMMON_ANDROID_PACKAGE_SUFFIX)

LOCAL_PACKAGE_NAME := ArgusSysAlarm
LOCAL_CERTIFICATE := shared
LOCAL_PRIVILEGED_MODULE := true

include $(BUILD_PREBUILT)

################################################

include $(CLEAR_VARS)

# Module name should match apk name to be installed.
LOCAL_MODULE := ArgusShellCommand
LOCAL_SRC_FILES := ArgusShellCommand.apk
LOCAL_MODULE_CLASS := APPS
LOCAL_MODULE_SUFFIX := $(COMMON_ANDROID_PACKAGE_SUFFIX)

LOCAL_PACKAGE_NAME := ArgusShellCommand
LOCAL_CERTIFICATE := shared
LOCAL_PRIVILEGED_MODULE := true

include $(BUILD_PREBUILT)

################################################

include $(CLEAR_VARS)

# Module name should match apk name to be installed.
LOCAL_MODULE := ArgusGetDeviceStatus
LOCAL_SRC_FILES := ArgusGetDeviceStatus.apk
LOCAL_MODULE_CLASS := APPS
LOCAL_MODULE_SUFFIX := $(COMMON_ANDROID_PACKAGE_SUFFIX)

LOCAL_PACKAGE_NAME := ArgusGetDeviceStatus
LOCAL_CERTIFICATE := shared
LOCAL_PRIVILEGED_MODULE := true

include $(BUILD_PREBUILT)

################################################

include $(CLEAR_VARS)

# Module name should match apk name to be installed.
LOCAL_MODULE := ArgusBlackwhitelistcontroller
LOCAL_SRC_FILES := ArgusBlackwhitelistcontroller.apk
LOCAL_MODULE_CLASS := APPS
LOCAL_MODULE_SUFFIX := $(COMMON_ANDROID_PACKAGE_SUFFIX)

LOCAL_PACKAGE_NAME := ArgusBlackwhitelistcontroller
LOCAL_CERTIFICATE := shared
LOCAL_PRIVILEGED_MODULE := true

include $(BUILD_PREBUILT)

################################################

include $(CLEAR_VARS)

# Module name should match apk name to be installed.
LOCAL_MODULE := ArgusAgentPro
LOCAL_SRC_FILES := ArgusAgentPro.apk
LOCAL_MODULE_CLASS := APPS
LOCAL_MODULE_SUFFIX := $(COMMON_ANDROID_PACKAGE_SUFFIX)

LOCAL_PACKAGE_NAME := ArgusAgentPro
LOCAL_CERTIFICATE := shared
LOCAL_PRIVILEGED_MODULE := true

include $(BUILD_PREBUILT)

################################################

include $(CLEAR_VARS)

# Module name should match apk name to be installed.
LOCAL_MODULE :=ArgusSetTimer
LOCAL_SRC_FILES := ArgusSetTimer.apk
LOCAL_MODULE_CLASS := APPS
LOCAL_MODULE_SUFFIX := $(COMMON_ANDROID_PACKAGE_SUFFIX)

LOCAL_PACKAGE_NAME :=ArgusSetTimer
LOCAL_CERTIFICATE := shared
LOCAL_PRIVILEGED_MODULE := true

include $(BUILD_PREBUILT)

################################################

include $(CLEAR_VARS)

# Module name should match apk name to be installed.
LOCAL_MODULE :=ArgusFlightModeTest
LOCAL_SRC_FILES := ArgusFlightModeTest.apk
LOCAL_MODULE_CLASS := APPS
LOCAL_MODULE_SUFFIX := $(COMMON_ANDROID_PACKAGE_SUFFIX)

LOCAL_PACKAGE_NAME :=ArgusFlightModeTest
LOCAL_CERTIFICATE := shared
LOCAL_PRIVILEGED_MODULE := true

include $(BUILD_PREBUILT)

################################################