APPIMAGE=pgadmin4-9.14-glibc_2.36-x86_64.AppImage
BUILD:=docker run --rm -it --init --privileged -v /dev/fuse:/dev/fuse -v .:/root --name pgadmin-build pgadmin-build ./deb2appimage-0.0.6-x86_64.AppImage

all: build

build-docker:
	docker build docker --tag pgadmin-build

build:
	$(BUILD) -j pgadmin4.json -o . --debug
mount:
	./$(APPIMAGE) --appimage-mount
run:
	./$(APPIMAGE)
clean:
	rm -f *.AppImage

