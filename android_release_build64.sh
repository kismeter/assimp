cmake	-G "Unix Makefiles" \
	-DCMAKE_BUILD_TYPE=Release  \
	-DANDROID_ABI=arm64-v8a \
	-DANDROID_NATIVE_API_LEVEL=android-24 \
	-DANDROID_FORCE_ARM_BUILD=TRUE \
	-DCMAKE_INSTALL_PREFIX=install \
	-DANDROID_STL=gnustl_static \
	-DASSIMP_BUILD_TESTS=OFF \
	-DANDROID_STL_FORCE_FEATURES=ON \
	-DANDROID_TOOLCHAIN=gcc
cmake --build .
cd lib
cp libassimp.so libassimp.so.debug
$ANDROID_NDK/toolchains/arm-linux-androideabi-4.9/prebuilt/linux-x86_64/arm-linux-androideabi/bin/strip libassimp.so

