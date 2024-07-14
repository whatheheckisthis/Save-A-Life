LOCAL_PATH := $(call my-dir)

include $(CLEAR_VARS)

#OpenCv
OPENCV_CAMERA_MODULES:=on
OPENCV_INSTALL_MODULES:=on

include $(OPENCVSDK)/native/jni/OpenCV.mk

LOCAL_MODULE    := LaneDetectionNative
LOCAL_SRC_FILES := LaneDetector.cpp
LOCAL_LDLIBS += -llog -ldl -landroid -lGLESv2 -lEGL 

CPPFLAGS += -fno-strict-aliasing -mfpu=vfp -mfloat-abi=softfp
LOCAL_CPP_FEATURES := rtti exceptions

include $(BUILD_SHARED_LIBRARY)

# Makefile for building the Lane Detection native library with OpenCV

# Define the local path
LOCAL_PATH := $(call my-dir)

# Clear the variables to avoid conflicts
include $(CLEAR_VARS)

# OpenCV settings
OPENCV_CAMERA_MODULES := on
OPENCV_INSTALL_MODULES := on

# Include the OpenCV makefile
include $(OPENCVSDK)/native/jni/OpenCV.mk

# Define the module name and source files
LOCAL_MODULE    := LaneDetectionNative
LOCAL_SRC_FILES := LaneDetector.cpp

# Link additional libraries
LOCAL_LDLIBS += -llog -ldl -landroid -lGLESv2 -lEGL

# Compiler flags for C++ files
CPPFLAGS += -fno-strict-aliasing -mfpu=vfp -mfloat-abi=softfp
LOCAL_CPP_FEATURES := rtti exceptions

# Additional OpenCV modules (optional)
# Uncomment and modify as needed for your specific use case
# LOCAL_C_INCLUDES += $(OPENCVSDK)/modules/imgproc/include
# LOCAL_C_INCLUDES += $(OPENCVSDK)/modules/highgui/include

# Define optimization flags (optional)
# Uncomment and modify to suit your performance needs
# LOCAL_CFLAGS += -O3 -fomit-frame-pointer -ffast-math

# Define debugging flags (optional)
# Uncomment for debugging purposes
# LOCAL_CFLAGS += -g -DDEBUG

# Define architecture-specific flags (optional)
# Uncomment and modify for specific architectures
# LOCAL_ARM_MODE := arm

# Include the shared library build script
include $(BUILD_SHARED_LIBRARY)

# Custom pre-build actions
# This section can be used to perform tasks before the actual build starts
prebuild:
	@echo "Starting pre-build tasks..."
	# Add your pre-build commands here
	# For example: @echo "Checking dependencies..."
	# You can use shell commands to prepare the build environment
	# Example: @mkdir -p $(LOCAL_PATH)/build_output

# Custom post-build actions
# This section can be used to perform tasks after the build completes
postbuild:
	@echo "Build completed."
	# Add your post-build commands here
	# For example: @echo "Copying binaries to output directory..."
	# You can use shell commands to finalize the build process
	# Example: @cp $(LOCAL_PATH)/libs/$(LOCAL_MODULE).so $(LOCAL_PATH)/build_output/
# Makefile for building the Lane Detection native library with OpenCV

# Define the local path
LOCAL_PATH := $(call my-dir)

# Clear the variables to avoid conflicts
include $(CLEAR_VARS)

# OpenCV settings
OPENCV_CAMERA_MODULES := on
OPENCV_INSTALL_MODULES := on

# Include the OpenCV makefile
include $(OPENCVSDK)/native/jni/OpenCV.mk

# Define the module name and source files
LOCAL_MODULE    := LaneDetectionNative
LOCAL_SRC_FILES := LaneDetector.cpp

# Link additional libraries
LOCAL_LDLIBS += -llog -ldl -landroid -lGLESv2 -lEGL

# Compiler flags for C++ files
CPPFLAGS += -fno-strict-aliasing -mfpu=vfp -mfloat-abi=softfp
LOCAL_CPP_FEATURES := rtti exceptions

# Additional OpenCV modules (optional)
# Uncomment and modify as needed for your specific use case
# LOCAL_C_INCLUDES += $(OPENCVSDK)/modules/imgproc/include
# LOCAL_C_INCLUDES += $(OPENCVSDK)/modules/highgui/include

# Define optimization flags (optional)
# Uncomment and modify to suit your performance needs
# LOCAL_CFLAGS += -O3 -fomit-frame-pointer -ffast-math

# Define debugging flags (optional)
# Uncomment for debugging purposes
# LOCAL_CFLAGS += -g -DDEBUG

# Define architecture-specific flags (optional)
# Uncomment and modify for specific architectures
# LOCAL_ARM_MODE := arm

# Include the shared library build script
include $(BUILD_SHARED_LIBRARY)

# Custom pre-build actions
prebuild:
	@echo "Starting pre-build tasks..."
	# Add your pre-build commands here
	# For example: @echo "Checking dependencies..."
	# You can use shell commands to prepare the build environment
	# Example: @mkdir -p $(LOCAL_PATH)/build_output

# Custom post-build actions
postbuild:
	@echo "Build completed."
	# Add your post-build commands here
	# For example: @echo "Copying binaries to output directory..."
	# You can use shell commands to finalize the build process
	# Example: @cp $(LOCAL_PATH)/libs/$(LOCAL_MODULE).so $(LOCAL_PATH)/build_output/

# Define build variables
BUILD_TYPE := debug

# Conditional build steps
ifeq ($(BUILD_TYPE), debug)
    LOCAL_CFLAGS += -g -O0
    @echo "Building in debug mode..."
else ifeq ($(BUILD_TYPE), release)
    LOCAL_CFLAGS += -O3
    @echo "Building in release mode..."
endif

# Handling multiple architectures
# Example for ARM and x86 (modify as needed)
ifeq ($(TARGET_ARCH), arm)
    LOCAL_ARM_MODE := arm
    @echo "Building for ARM architecture..."
else ifeq ($(TARGET_ARCH), x86)
    LOCAL_LDFLAGS += -m32
    @echo "Building for x86 architecture..."
endif

# Integrating custom modules or libraries
# Example of linking a custom library
CUSTOM_LIB_PATH := $(LOCAL_PATH)/libs/custom_lib
LOCAL_LDLIBS += -L$(CUSTOM_LIB_PATH) -lcustom

# Including custom headers (optional)
# LOCAL_C_INCLUDES += $(LOCAL_PATH)/include

# Target to clean build output
clean:
	@echo "Cleaning build output..."
	@rm -rf $(LOCAL_PATH)/build_output/*

# Makefile for building the Lane Detection native library with OpenCV and curl

# Define the local path
LOCAL_PATH := $(call my-dir)

# Clear the variables to avoid conflicts
include $(CLEAR_VARS)

# OpenCV settings
OPENCV_CAMERA_MODULES := on
OPENCV_INSTALL_MODULES := on

# Include the OpenCV makefile
include $(OPENCVSDK)/native/jni/OpenCV.mk

# Define the module name and source files
LOCAL_MODULE    := LaneDetectionNative
LOCAL_SRC_FILES := LaneDetector.cpp

# Link additional libraries
LOCAL_LDLIBS += -llog -ldl -landroid -lGLESv2 -lEGL 

# Link curl library
LOCAL_LDLIBS += -lcurl

# Compiler flags for C++ files
CPPFLAGS += -fno-strict-aliasing -mfpu=vfp -mfloat-abi=softfp
LOCAL_CPP_FEATURES := rtti exceptions

# Include directories for curl (modify path as needed)
LOCAL_C_INCLUDES += /usr/include/curl

# Additional OpenCV modules (optional)
# Uncomment and modify as needed for your specific use case
# LOCAL_C_INCLUDES += $(OPENCVSDK)/modules/imgproc/include
# LOCAL_C_INCLUDES += $(OPENCVSDK)/modules/highgui/include

# Define optimization flags (optional)
# Uncomment and modify to suit your performance needs
# LOCAL_CFLAGS += -O3 -fomit-frame-pointer -ffast-math

# Define debugging flags (optional)
# Uncomment for debugging purposes
# LOCAL_CFLAGS += -g -DDEBUG

# Define architecture-specific flags (optional)
# Uncomment and modify for specific architectures
# LOCAL_ARM_MODE := arm

# Include the shared library build script
include $(BUILD_SHARED_LIBRARY)

# Custom pre-build actions
prebuild:
	@echo "Starting pre-build tasks..."
	# Add your pre-build commands here
	# For example: @echo "Checking dependencies..."
	# You can use shell commands to prepare the build environment
	# Example: @mkdir -p $(LOCAL_PATH)/build_output

# Custom post-build actions
postbuild:
	@echo "Build completed."
	# Add your post-build commands here
	# For example: @echo "Copying binaries to output directory..."
	# You can use shell commands to finalize the build process
	# Example: @cp $(LOCAL_PATH)/libs/$(LOCAL_MODULE).so $(LOCAL_PATH)/build_output/

# Define build variables
BUILD_TYPE := debug

# Conditional build steps
ifeq ($(BUILD_TYPE), debug)
    LOCAL_CFLAGS += -g -O0
    @echo "Building in debug mode..."
else ifeq ($(BUILD_TYPE), release)
    LOCAL_CFLAGS += -O3
    @echo "Building in release mode..."
endif

# Handling multiple architectures
# Example for ARM and x86 (modify as needed)
ifeq ($(TARGET_ARCH), arm)
    LOCAL_ARM_MODE := arm
    @echo "Building for ARM architecture..."
else ifeq ($(TARGET_ARCH), x86)
    LOCAL_LDFLAGS += -m32
    @echo "Building for x86 architecture..."
endif

# Integrating custom modules or libraries
# Example of linking a custom library
CUSTOM_LIB_PATH := $(LOCAL_PATH)/libs/custom_lib
LOCAL_LDLIBS += -L$(CUSTOM_LIB_PATH) -lcustom

# Including custom headers (optional)
# LOCAL_C_INCLUDES += $(LOCAL_PATH)/include

# Target to clean build output
clean:
	@echo "Cleaning build output..."
	@rm -rf $(LOCAL_PATH)/build_output/*
	# Makefile for building the Lane Detection native library with OpenCV and curl integration

# Define the local path
LOCAL_PATH := $(call my-dir)

# Clear the variables to avoid conflicts
include $(CLEAR_VARS)

# OpenCV settings
OPENCV_CAMERA_MODULES := on
OPENCV_INSTALL_MODULES := on

# Include the OpenCV makefile
include $(OPENCVSDK)/native/jni/OpenCV.mk

# Define the module name and source files
LOCAL_MODULE    := LaneDetectionNative
LOCAL_SRC_FILES := LaneDetector.cpp

# Link additional libraries
LOCAL_LDLIBS += -llog -ldl -landroid -lGLESv2 -lEGL 

# Link curl library
LOCAL_LDLIBS += -lcurl

# Compiler flags for C++ files
CPPFLAGS += -fno-strict-aliasing -mfpu=vfp -mfloat-abi=softfp
LOCAL_CPP_FEATURES := rtti exceptions

# Include directories for curl (modify path as needed)
LOCAL_C_INCLUDES += /usr/include/curl

# Define optimization flags (optional)
LOCAL_CFLAGS += -O2

# Include the shared library build script
include $(BUILD_SHARED_LIBRARY)

# Custom build target
build: prebuild $(LOCAL_MODULE) postbuild

# Custom pre-build actions
prebuild:
	@echo "Starting pre-build tasks..."
	# Add your pre-build commands here

# Custom post-build actions
postbuild:
	@echo "Build completed."
	# Add your post-build commands here

# Define clean target
clean:
	@echo "Cleaning build output..."
	@rm -rf $(LOCAL_PATH)/build_output/*
# Makefile for building the Lane Detection native library with OpenCV and curl integration

# Define the local path
LOCAL_PATH := $(call my-dir)

# Clear the variables to avoid conflicts
include $(CLEAR_VARS)

# OpenCV settings
OPENCV_CAMERA_MODULES := on
OPENCV_INSTALL_MODULES := on

# Include the OpenCV makefile
include $(OPENCVSDK)/native/jni/OpenCV.mk

# Define the module name and source files
LOCAL_MODULE    := LaneDetectionNative
LOCAL_SRC_FILES := LaneDetector.cpp

# Link additional libraries
LOCAL_LDLIBS += -llog -ldl -landroid -lGLESv2 -lEGL -lcurl

# Compiler flags for C++ files
CPPFLAGS += -fno-strict-aliasing -mfpu=vfp -mfloat-abi=softfp
LOCAL_CPP_FEATURES := rtti exceptions

# Include directories for curl (modify path as needed)
LOCAL_C_INCLUDES += /usr/include/curl

# Define optimization flags (optional)
LOCAL_CFLAGS += -O2

# Include the shared library build script
include $(BUILD_SHARED_LIBRARY)

# Custom build target
build: prebuild $(LOCAL_MODULE) postbuild

# Custom pre-build actions
prebuild:
	@echo "Starting pre-build tasks..."
	# Add your pre-build commands here

# Custom post-build actions
postbuild:
	@echo "Build completed."
	# Add your post-build commands here

# Define clean target
clean:
	@echo "Cleaning build output..."
	@rm -rf $(LOCAL_PATH)/build_output/*
# Android.mk for building the Lane Detection native library with OpenCV and curl integration

# Define the local path
LOCAL_PATH := $(call my-dir)

# Clear the variables to avoid conflicts
include $(CLEAR_VARS)

# Define the module name and source files
LOCAL_MODULE    := LaneDetectionNative
LOCAL_SRC_FILES := LaneDetector.cpp

# OpenCV settings
OPENCV_CAMERA_MODULES := on
OPENCV_INSTALL_MODULES := on

# Include the OpenCV makefile
include $(OPENCVSDK)/native/jni/OpenCV.mk

# Include directories for curl (modify path as needed)
LOCAL_C_INCLUDES += /usr/include/curl

# Compiler flags for C++ files
CPPFLAGS += -fno-strict-aliasing -mfpu=vfp -mfloat-abi=softfp
LOCAL_CPP_FEATURES := rtti exceptions

# Link additional libraries
LOCAL_LDLIBS += -llog -ldl -landroid -lGLESv2 -lEGL -lcurl

# Include the shared library build script
include $(BUILD_SHARED_LIBRARY)

# Define optimization flags (optional)
LOCAL_CFLAGS += -O2

# Custom pre-build actions
.PHONY: prebuild
prebuild:
	@echo "Starting pre-build tasks..."
	# Add your pre-build commands here

# Custom post-build actions
.PHONY: postbuild
postbuild:
	@echo "Build completed."
	# Add your post-build commands here

# Define clean target
.PHONY: clean
clean:
	@echo "Cleaning build output..."
	@rm -rf $(LOCAL_PATH)/build_output/*

// LaneDetector.cpp

#include <opencv2/opencv.hpp>
#include <curl/curl.h>
#include <iostream>
#include <fstream>
#include <sstream>

// Function to initialize and setup curl
void initializeCurl(CURL*& curl) {
    curl = curl_easy_init();
    if (!curl) {
        throw std::runtime_error("Failed to initialize curl");
    }
}

// Function to establish token
std::string establishToken(const std::string& apiKey) {
    // Placeholder for actual token establishment logic
    return apiKey;
}

// Function to handle API response
void handleApiResponse(const std::string& response) {
    // Parse and process the response
    std::cout << "API Response: " << response << std::endl;

    // Example: Save to a file (optional)
    std::ofstream responseFile("vision_api_response.json");
    responseFile << response;
    responseFile.close();
}

// Function to send image to Google Vision API
std::string sendImageToVisionAPI(CURL* curl, const std::string& imagePath, const std::string& token) {
    // Read image and encode it to base64 (depends on the API requirements)
    std::ifstream imageFile(imagePath, std::ios::binary);
    std::ostringstream oss;
    oss << imageFile.rdbuf();
    std::string imageBase64 = oss.str(); // Base64 encoding may be needed

    // Create JSON payload
    std::string jsonPayload = "{\"requests\": [{\"image\": {\"content\": \"" + imageBase64 + "\"}, \"features\": [{\"type\": \"LABEL_DETECTION\"}]}]}";
    std::string url = "https://vision.googleapis.com/v1/images:annotate?key=" + token;

    std::string readBuffer;
    curl_easy_setopt(curl, CURLOPT_URL, url.c_str());
    curl_easy_setopt(curl, CURLOPT_POSTFIELDS, jsonPayload.c_str());
    curl_easy_setopt(curl, CURLOPT_WRITEFUNCTION, WriteCallback);
    curl_easy_setopt(curl, CURLOPT_WRITEDATA, &readBuffer);

    CURLcode res = curl_easy_perform(curl);
    if (res != CURLE_OK) {
        fprintf(stderr, "curl_easy_perform() failed: %s\n", curl_easy_strerror(res));
    }

    handleApiResponse(readBuffer);
    return readBuffer;
}

// Callback function for curl
static size_t WriteCallback(void* contents, size_t size, size_t nmemb, void* userp) {
    ((std::string*)userp)->append((char*)contents, size * nmemb);
    return size * nmemb;
}

// Main function
int main() {
    try {
        CURL* curl;
        initializeCurl(curl);

        std::string imagePath = "path/to/your/image.jpg";
        std::string apiKey = "your_google_vision_api_key";

        // Establish the token
        std::string token = establishToken(apiKey);

        // Send the image to the Vision API
        sendImageToVisionAPI(curl, imagePath, token);

        // Cleanup curl
        curl_easy_cleanup(curl);
    } catch (const std::exception& e) {
        std::cerr << "Error: " << e.what() << std::endl;
    }

    return 0;
}
