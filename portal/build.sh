#! /bin/bash
PORTAL_INSTALL_BIN="$1"
cp ${PORTAL_INSTALL_BIN} ./opentext_portal_for_unix.bin
docker build -t portal162 --build-arg portal_install_bin=opentext_portal_for_unix.bin -f- ./ < Dockerfile
rm ./opentext_portal_for_unix.bin
