all: build

clean:
	rm -rf build

build: clean
	mkdir build
	cd build && cmake .. && make

triangle:
	./build/CG01_Triangle

cube:
	./build/CG01_Cube
