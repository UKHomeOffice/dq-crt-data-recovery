FROM centos:7
ENV USERMAP_UID 1000
RUN yum install -y python \
  && yum install -y epel-release \
  && yum install -y python-pip \
  && pip install awscli

RUN groupadd -r runner && \
  useradd --no-log-init -u $USERMAP_UID -r -g runner runner && \
  groupadd docker && \
  usermod -aG docker runner && \  
USER ${USERMAP_UID}
CMD ["/usr/sbin/init"]
