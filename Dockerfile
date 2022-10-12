FROM quay.io/centos/centos:centos7

RUN yum install -y selinux-policy-devel make
RUN yum upgrade -y libsepol

# Script to execute when the docker container starts up
ENTRYPOINT ["make", "-f", "/usr/share/selinux/devel/Makefile"]
