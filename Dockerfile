FROM centos
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
COPY ./Makefile /Makefile
COPY ./setup.py /setup.py
COPY ./setup.cfg /setup.cfg
RUN make install
