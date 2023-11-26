#!/bin/bash

set +x
export PYTHONHOME=$APPDIR/usr
export PYTHONPATH=$APPDIR/usr/python3.11
export LD_LIBRARY_PATH=$APPDIR/usr/lib/x86_64-linux-gnu
$APPDIR/usr/pgadmin4/bin/pgadmin4
exit 0

