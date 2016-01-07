FROM centos:6
MAINTAINER Chad Schmutzer <schmutze@amazon.com>

RUN rpm -Uvh https://dl.fedoraproject.org/pub/epel/6/x86_64/epel-release-6-8.noarch.rpm
RUN rpm -Uvh http://software.internet2.edu/rpms/el6/x86_64/main/RPMS/Internet2-repo-0.5-3.noarch.rpm

RUN yum -y install bwctl owamp traceroute paris-traceroute nuttcp

EXPOSE 4823/tcp

EXPOSE 5001-5900/tcp
EXPOSE 5001-5900/udp

EXPOSE 6001-6200/tcp
EXPOSE 6001-6200/udp
