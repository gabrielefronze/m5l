FROM centos:7

RUN yum update -y
RUN yum install -y epel-release
RUN mkdir -p /tmp/cmake && \
    pushd /tmp/cmake && \
    wget 'https://cmake.org/files/v3.9/cmake-3.9.1-Linux-x86_64.sh' && \
    bash cmake-3.9.1-Linux-x86_64.sh --prefix=/usr/local --exclude-subdir && \
    popd && \
    rm -rf /tmp/cmake
RUN yum install -y root

WORKDIR /tmp
RUN yum install -y wget
RUN rpm --import http://li.nux.ro/download/nux/RPM-GPG-KEY-nux.ro
RUN wget http://li.nux.ro/download/nux/dextop/el7/x86_64/nux-dextop-release-0-5.el7.nux.noarch.rpm
RUN rpm -Uvh nux-dextop-release*rpm
RUN yum update -y && yum install -y dcmtk-devel

WORKDIR /
RUN yum -y install --enablerepo="epel" python-pip && yum clean all
RUN pip3 install --upgrade pip
RUN pip3 install Flask
EXPOSE 8888
