FROM centos:8
LABEL maintainer="yangguanlong guanlong.yang@hnjiuli.com"
RUN dnf -y install python3-tkinter
RUN yum -y install ghostscript
RUN yum install -y python39 python39-pip
RUN yum -y install make
RUN yum -y install vim
RUN yum -y install mesa-libGL
RUN yum -y install dnf-plugins-core
RUN dnf --enablerepo=powertools install -y poppler-cpp-devel
RUN yum -y install gcc-c++ pkgconfig python39-devel
RUN yum -y install postgresql-devel*
#
COPY ./Makefile /Makefile
COPY ./setup.py /setup.py
COPY ./setup.cfg /setup.cfg
COPY ./requirements.txt /requirements.txt
RUN pip3 install  -r requirements.txt -i https://mirrors.cloud.tencent.com/pypi/simple/
#
RUN sed -i 's/mirrorlist/#mirrorlist/g' /etc/yum.repos.d/CentOS-Linux-*
RUN sed -i 's|#baseurl=http://mirror.centos.org|baseurl=http://vault.centos.org|g' /etc/yum.repos.d/CentOS-Linux-*
RUN yum -y groupinstall "Fonts"
RUN yum -y install libreoffice-calc.x86_64
RUN yum -y install libreoffice-writer.x86_64
