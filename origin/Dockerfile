FROM docker.io/openshift/origin-cli:v3.10

ENV KUBEVIRT_VERSION="v0.6.4"

RUN yum install -y /usr/bin/remote-viewer git curl wget && \
    wget -O /usr/bin/virtctl https://github.com/kubevirt/kubevirt/releases/download/${KUBEVIRT_VERSION}/virtctl-${KUBEVIRT_VERSION}-linux-amd64 && \
    chmod +x /usr/bin/virtctl && \
    yum clean all




