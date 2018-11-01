#!/bin/bash

RUNTIME="podman"
CLI_TAG="v3.10.0"
DNS="172.31.52.123"


sudo ${RUNTIME} run -it --rm \
    --entrypoint=/usr/bin/bash \
    -v /tmp/.X11-unix:/tmp/.X11-unix:Z \
    -v ${HOME}/.ssh:/tmp/ssh:Z \
    -v /dev/dri:/dev/dri:Z \
    --security-opt=label=type:container_runtime_t \
    --memory "4g" \
    --shm-size "1g" \
    -u $(id -u) \
    -e DISPLAY=${DISPLAY} \
    firefox:latest $@ 

