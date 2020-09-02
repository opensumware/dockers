#! /bin/bash
. ./env.sh

CDS_INSTALL_FILE="setup_linux64_cds_16_2_2.bin"
PORTAL_INSTALL_FILE="opentext_portal_for_unix.bin"
cp ${CDS_INSTALL_BIN} ./${CDS_INSTALL_FILE}
cp ${PORTAL_INSTALL_BIN} ./${PORTAL_INSTALL_FILE}

docker build --no-cache -t portal1622 --build-arg STAGE_NAME=${STAGE_NAME} -f- ./ < Dockerfile
rm ./${CDS_INSTALL_FILE}
rm ./${PORTAL_INSTALL_FILE}
