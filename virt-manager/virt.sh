#!/bin/bash

RUNTIME="podman"
CLI_TAG="v3.10.0"
#DNS="10.5.30.160"


sudo ${RUNTIME} run -it --rm \
    --entrypoint=/usr/bin/bash \
    -v /tmp/.X11-unix:/tmp/.X11-unix:Z \
    -v ${HOME}/.ssh:/tmp/ssh:Z \
    -u $(id -u) \
    -e DISPLAY=${DISPLAY} \
    virt-manager:latest $@ 

#sudo ${RUNTIME} run -it --rm --dns ${DNS} --entrypoint=/bin/sh -v ${PWD}/admin.kubeconfig:/tmp/admin.kubeconfig -e KUBECONFIG=/tmp/admin.kubeconfig quay.io/openshift/origin-cli:${CLI_TAG} oc $@ 

