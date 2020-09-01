#! /bin/bash
PORTAL_INSTALL_BIN="$1"
STAGE_NAME="$2"
cp ${PORTAL_INSTALL_BIN} ./opentext_portal_for_unix.bin
docker build -t portal162 --build-arg STAGE_NAME=${STAGE_NAME} -f- ./ < Dockerfile
rm ./opentext_portal_for_unix.bin
