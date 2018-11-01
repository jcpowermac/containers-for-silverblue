FROM docker.io/fedora:28

RUN dnf -y install iproute bind-utils sshuttle && \
    dnf clean all

ENTRYPOINT ["/usr/bin/sshuttle"]
CMD ["--help"]

