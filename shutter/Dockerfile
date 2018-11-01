FROM registry.fedoraproject.org/fedora:28 


RUN dnf install -y flameshot && \
    dnf clean all

ENV USER_NAME=user
ENV APP_ROOT=/home/${USER_NAME} UID=1000 container=oci
ENV PATH=${APP_ROOT}/bin:${PATH} HOME=${APP_ROOT}
COPY bin/ ${APP_ROOT}/bin/

RUN useradd -u ${UID} -g 0 -d ${HOME} ${USER_NAME} && \ 
    chown -R ${USER_NAME}:0 ${APP_ROOT} && \
    chgrp -R 0 ${APP_ROOT} /etc/passwd && \
    chmod -R g=u ${APP_ROOT} /etc/passwd /etc/machine-id /etc/hostname

USER ${USER_NAME} 
WORKDIR ${APP_ROOT}
ENTRYPOINT [ "entrypoint" ]

