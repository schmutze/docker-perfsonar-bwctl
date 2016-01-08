FROM centos:6
MAINTAINER Chad Schmutzer <schmutze@amazon.com>

# add required yum repos
RUN rpm -Uvh https://dl.fedoraproject.org/pub/epel/6/x86_64/epel-release-6-8.noarch.rpm
RUN rpm -Uvh http://software.internet2.edu/rpms/el6/x86_64/main/RPMS/Internet2-repo-0.5-3.noarch.rpm

# install required packages
RUN yum -y install bwctl owamp traceroute paris-traceroute nuttcp ntp

# clean up
RUN yum clean all

# not really necessary, but just to make sure bwctl doesn't complain about time not being synced
RUN ntpd -gq

# expose required ports for bwctl
EXPOSE 4823/tcp

EXPOSE 5001-5900/tcp 5001-5900/udp

EXPOSE 6001-6200/tcp 6001-6200/udp
