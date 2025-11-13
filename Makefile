APPIMAGE=pgadmin4-9.10-glibc_2.35-x86_64.AppImage
BUILD:=docker run --rm -it --init --privileged -v /dev/fuse:/dev/fuse -v .:/root --name pgadmin-build pgadmin-build ./deb2appimage-0.0.5-x86_64.AppImage

all: build

build-docker:
	wget -qnc https://github.com/simoniz0r/deb2appimage/releases/download/v0.0.5/deb2appimage-0.0.5-x86_64.AppImage && chmod +x deb2appimage-0.0.5-x86_64.AppImage
	docker build docker --tag pgadmin-build
build:
	$(BUILD) -j pgadmin4.json -o . --debug
mount:
	./$(APPIMAGE) --appimage-mount
run:
	./$(APPIMAGE)
clean:
	rm -f *.AppImage

