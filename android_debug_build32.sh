NDK_BUNDLE ?= /home/flynnt/trees/android-sdk/ndk-bundle
cmake --trace -G "Unix Makefiles" -DCMAKE_BUILD_TYPE=Debug -DANDROID_ABI=armeabi-v7a -DANDROID_NATIVE_API_LEVEL=android-24 -DANDROID_FORCE_ARM_BUILD=TRUE -DCMAKE_INSTALL_PREFIX=install -DANDROID_STL=c++_shared -DANDROID_STL_FORCE_FEATURES=ON -DCMAKE_TOOLCHAIN_FILE=$(NDK_BUNDLE)/build/cmake/android.toolchain.cmake -DANDROID_TOOLCHAIN=clang
make

