debug/configure:
	cmake -S standalone -B build/debug/standalone -DCMAKE_BUILD_TYPE=Debug

debug/build:
	cmake --build build/debug/standalone --config Debug

debug/run:
	build/debug/standalone/Greeter

debug/dev:
	make debug/build
	make debug/run	

debug/all:
	make debug/configure
	make debug