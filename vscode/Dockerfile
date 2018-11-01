FROM docker.io/fedora:28


COPY vscode.repo /etc/yum.repos.d/

ENV PKGS="wget which code git golang golang-godoc libX11-xcb"


RUN dnf upgrade -y \ 
    && dnf install -y ${PKGS}

ENV HOME /home/user
RUN useradd --create-home --home-dir ${HOME} user \
    && chown -R user:user ${HOME}


WORKDIR ${HOME}

USER user
RUN code --install-extension ms-vscode.Go 

