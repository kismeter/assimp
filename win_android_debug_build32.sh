cmake --trace  -G "MinGW Makefiles" \
	-DCMAKE_MAKE_PROGRAM=$NDKROOT/prebuilt/windows-x86_64/bin/make.exe \
	-DANDROID_LINKER_FLAGS=-lz -Wl,--exclude-libs,libunwind.a  \
	-DCMAKE_BUILD_TYPE=Debug \
	-DANDROID_ABI=armeabi-v7a \
	-DANDROID_NATIVE_API_LEVEL=android-22 \
	-DCMAKE_INSTALL_PREFIX=install \
	-DANDROID_STL=c++_shared \
	-DASSIMP_BUILD_TESTS=OFF \
	-DANDROID_TOOLCHAIN_NAME=arm-linux-androideabi-4.9 \
	-DANDROID_STL_FORCE_FEATURES=ON \
	-DCMAKE_TOOLCHAIN_FILE=$NDKROOT/build/cmake/android.toolchain.cmake \
	-DANDROID_TOOLCHAIN=clang
$NDKROOT/prebuilt/windows-x86_64/bin/make.exe -j12

