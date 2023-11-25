
all: build

build:
	deb2appimage -j pgadmin4.json -o . --debug

run:
	./pgadmin4-8.0-x86_64.AppImage

