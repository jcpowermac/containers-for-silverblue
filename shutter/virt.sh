#!/bin/bash

RUNTIME="podman"
CLI_TAG="v3.10.0"


sudo ${RUNTIME} run -it --rm \
    --entrypoint=/usr/bin/bash \
    -v /tmp/.X11-unix:/tmp/.X11-unix:Z \
    -u $(id -u) \
    -e DISPLAY=${DISPLAY} \
    shutter:latest $@ 


