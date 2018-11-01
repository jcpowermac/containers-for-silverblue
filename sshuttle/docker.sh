#!/bin/bash

sudo docker run \
    --privileged \
    --dns 8.8.8.8 \
    --cap-add NET_ADMIN \
    --cap-add NET_RAW \
    -it \
    --net host \
    --rm \
    --volume /etc/localtime:/etc/localtime:ro \
    --volume /etc/hosts:/etc/hosts:Z \
    sshuttle $@




