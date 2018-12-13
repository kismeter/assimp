cmake --trace  -G "MinGW Makefiles" \
	-DCMAKE_MAKE_PROGRAM=$NDKROOT/prebuilt/windows-x86_64/bin/make.exe \
	-DCMAKE_BUILD_TYPE=Release \
	-DANDROID_ABI=x86_64 \
	-DANDROID_NATIVE_API_LEVEL=android-22 \
	-DCMAKE_INSTALL_PREFIX=install \
	-DANDROID_STL=c++_shared \
	-DANDROID_TOOLCHAIN_NAME=x86_64-4.9 \
	-DANDROID_STL_FORCE_FEATURES=ON \
	-DCMAKE_TOOLCHAIN_FILE=$NDKROOT/build/cmake/android.toolchain.cmake \
	-DANDROID_TOOLCHAIN=clang
$NDKROOT/prebuilt/windows-x86_64/bin/make.exe -j12
$NDKROOT/toolchains/x86_64-4.9/prebuilt/windows-x86_64/x86_64-linux-android/bin/strip.exe lib/libassimp.so
