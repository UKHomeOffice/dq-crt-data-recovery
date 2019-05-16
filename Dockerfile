FROM centos:7
RUN yum install -y python \
  && yum install -y epel-release \
  && yum install -y python-pip \
  && pip install awscli
CMD ["/usr/sbin/init"]
