cmake -G "MinGW Makefiles" \
	-DCMAKE_MAKE_PROGRAM=$NDKROOT/prebuilt/windows-x86_64/bin/make.exe \
	-DCMAKE_BUILD_TYPE=Debug \
	-DANDROID_LINKER_FLAGS=-lz -Wl,--exclude-libs,libunwind.a  \
	-DANDROID_ABI=arm64-v8a \
	-DANDROID_NATIVE_API_LEVEL=android-26 \
	-DCMAKE_INSTALL_PREFIX=install \
	-DANDROID_STL=c++_shared \
	-DASSIMP_BUILD_TESTS=OFF \
	-DANDROID_STL_FORCE_FEATURES=ON \
	-DANDROID_TOOLCHAIN_NAME=aarch64-linux-android-4.9 \
	-DCMAKE_TOOLCHAIN_FILE=$NDKROOT/build/cmake/android.toolchain.cmake \
	-DANDROID_TOOLCHAIN=clang
$NDKROOT/prebuilt/windows-x86_64/bin/make.exe -j12
