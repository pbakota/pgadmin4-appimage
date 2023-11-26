#!/bin/bash

APPDIR=~/.cache/deb2appimage/AppDir

function relpath() { 
  python3 -c "import os,sys;print(os.path.relpath(*(sys.argv[1:])))" "$@";
}

ln -sf $(relpath $APPDIR/usr/bin/python3.11 $APPDIR/usr/pgadmin4/venv/bin) $APPDIR/usr/pgadmin4/venv/bin/python3
