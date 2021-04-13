FROM centos:latest

RUN yum update -y
RUN yum install -y epel-release
RUN yum install -y root

WORKDIR /tmp
RUN rpm --import http://li.nux.ro/download/nux/RPM-GPG-KEY-nux.ro
RUN wget http://li.nux.ro/download/nux/dextop/el7/x86_64/nux-dextop-release-0-5.el7.nux.noarch.rpm
RUN rpm -Uvh nux-dextop-release*rpm
RUN yum update -y && yum install -y dcmtk-devel