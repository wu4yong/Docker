# 基础镜像为 centos
FROM centos:7
# 维护者 
MAINTAINER wu4yong
# 添加jdk8压缩包至 /opt/docker 目录
ADD jdk-8u311-linux-x64.rpm /opt/

RUN cd /opt  && rpm -ivh  jdk-8u311-linux-x64.rpm
RUN yum -y install  vim \
        -y install ncurses \
        -y epel-release \
        -y install ansible \
        -y install passwd
# 将JAVA_HOME/bin 添加至PATH环境变量
ENV JAVA_HOME /usr/java/default
# ENV PATH $JAVA_HOME/bin:$PATH
ENV PATH $JAVA_HOME/bin:$PATH
