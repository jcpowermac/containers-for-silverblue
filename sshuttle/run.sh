#!/bin/bash

sudo podman run \
    --cap-add NET_ADMIN \
    --cap-add NET_RAW \
    -it \
    --net host \
    --rm \
    --volume /etc/localtime:/etc/localtime:ro \
    --volume /etc/hosts:/etc/hosts:Z \
    sshuttle $@

