FROM registry.fedoraproject.org/fedora:28

RUN dnf install -y rpm-ostree ostree git vim zsh wget curl
RUN mkdir -p /srv/repo && \
    (cd /srv/ ; git clone https://pagure.io/workstation-ostree-config -b f29) 


