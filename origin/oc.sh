#!/bin/bash

RUNTIME="podman"
CLI_TAG="v3.10.0"
DNS="10.5.30.160"


#    --entrypoint=/usr/bin/oc \
sudo ${RUNTIME} run -it --rm \
    --dns ${DNS} \
    --entrypoint=/usr/bin/bash \
    -v ${PWD}/admin.kubeconfig:/tmp/admin.kubeconfig:Z \
    -v /tmp/.X11-unix:/tmp/.X11-unix:Z \
    -u $(id -u) \
    -e DISPLAY=${DISPLAY} \
    -e KUBECONFIG=/tmp/admin.kubeconfig virtctl:latest  
#    -e KUBECONFIG=/tmp/admin.kubeconfig virtctl:latest $@ 

#sudo ${RUNTIME} run -it --rm --dns ${DNS} --entrypoint=/bin/sh -v ${PWD}/admin.kubeconfig:/tmp/admin.kubeconfig -e KUBECONFIG=/tmp/admin.kubeconfig quay.io/openshift/origin-cli:${CLI_TAG} oc $@ 

