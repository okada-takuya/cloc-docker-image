FROM centos:7
LABEL maintainer "Takuya.Okada <pitipitiunsyumikan@gmail.com>"
RUN INSTALL_PKGS="cloc" && \
    yum install -y epel-release && \
    yum update -y && \
    yum install -y --setopt=tsflags=nodocs $INSTALL_PKGS && \
    yum clean all -y
CMD ["/bin/bash"]
