FROM centos:7
ENV USERMAP_UID 1000
RUN yum install -y python \
  && yum install -y epel-release \
  && yum install -y python-pip \
  && pip install awscli
USER ${USERMAP_UID}
CMD ["/usr/sbin/init"]
