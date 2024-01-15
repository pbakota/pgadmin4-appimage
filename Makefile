APPIMAGE=pgadmin4-8.2-glibc_2.35-x86_64.AppImage

all: build

build:
	deb2appimage -j pgadmin4.json -o . --debug
mount:
	./$(APPIMAGE) --appimage-mount
run:
	./$(APPIMAGE)
clean:
	rm -f *.AppImage

